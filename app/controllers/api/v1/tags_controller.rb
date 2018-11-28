class API::V1::TagsController < API::V1::BaseController

  def create
    render status: :ok, json: Tag.create(tag_params)
  end

  def index
    render status: :ok, json: Tag.all
  end

  def update
    render status: :ok, json: Tag.find(tag_params.delete(:id)).update(tag_params)
  end

  private

  def tag_params
    parse!(only: %i[id title])
  end

end
