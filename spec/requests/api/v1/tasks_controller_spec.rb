require "rails_helper"

describe API::V1::TasksController do

  describe 'POST #create' do
    subject               { post api_v1_tasks_path, body }
    let(:server_response) { subject and response }

    context 'with a valid body' do
      let(:body) { {params: {data: {attributes: {title: 'Do Homework'}}}} }

      specify { server_response.should have_http_status(:created) }
      it      { ought.to change { Task.count }.from(0).to(1) }
    end
  end

end
