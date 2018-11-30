require "rails_helper"

describe API::V1::TagsController do
  let(:server_response) { subject and response }

  describe 'POST #create' do
    subject { post api_v1_tags_path, body }

    context 'with a valid body' do
      let(:body) { {params: {data: {attributes: {title: 'Today'}}}} }

      specify { server_response.should have_http_status :created }
      it      { ought.to change { Tag.count }.from(0).to(1) }
    end
  end

  describe 'GET #index' do
    subject { get api_v1_tags_path, body }

    context 'with a valid body' do
      let(:body)       { {} }
      let(:tag)        { create(:tag) }
      let(:serializer) { TagSerializer.new(tag) }
      let!(:tag_json)  { adapt_serializer!(serializer).as_json[:data].to_json }

      specify { server_response.should have_http_status :ok }
      specify { server_response.body.should include tag_json }
    end
  end

  describe 'PATCH #update' do
    subject { patch api_v1_tag_path(tag), body }

    context 'with a valid body' do
      let(:body)      { {params: {data: data}} }
      let(:data)      { {type: :tags, id: tag.id, attributes: {title: new_title}} }
      let(:new_title) { 'Updated Tag Title'}
      let!(:tag)      { create(:tag) }

      specify { server_response.should have_http_status :ok }
      it      { ought.to change { tag.reload.title }.to('Updated Tag Title') }
    end
  end

end
