require "rails_helper"

describe API::V1::TasksController do
  let(:server_response) { subject and response }

  describe 'POST #create' do
    subject { post api_v1_tasks_path, body }

    context 'with a valid body' do
      let(:body) { {params: {data: {attributes: {title: 'Do Homework'}}}} }

      specify { server_response.should have_http_status :created }
      it      { ought.to change { Task.count }.from(0).to(1) }
    end
  end

  describe 'DELETE #destroy' do
    subject { delete api_v1_task_path(task), body }

    context 'with a valid body' do
      let(:body)  { {params: {data: {type: :tasks, id: 1}}} }
      let!(:task) { create(:task) }

      specify { server_response.should have_http_status :ok }
      it      { ought.to change { Task.count }.from(1).to(0) }
    end
  end

  describe 'GET #index' do
    subject { get api_v1_tasks_path, body }

    context 'with a valid body' do
      let(:body)       { {} }
      let(:task)       { create(:task) }
      let(:serializer) { TaskSerializer.new(task) }
      let!(:task_json) { adapt_serializer!(serializer).as_json[:data].to_json }

      specify { server_response.should have_http_status :ok }
      specify { server_response.body.should include task_json }
    end
  end

  describe 'PATCH #update' do
    subject { patch api_v1_task_path(task), body }

    context 'with a valid body' do
      let(:body)      { {params: {data: data}} }
      let(:data)      { {type: :tasks, id: task.id, attributes: {title: new_title}} }
      let(:new_title) { 'Updated Task Title'}
      let!(:task)     { create(:task) }

      specify { server_response.should have_http_status :ok }
      it      { ought.to change { task.reload.title }.to('Updated Task Title') }
    end
  end

end
