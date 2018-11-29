class API::V1::TagsController < API::V1::BaseController

  def create
    render status: :created, json: Tag.create(tag_params.except(:id))
  end

  def index
    render status: :ok, json: Tag.all
  end

  def update
    render status: :ok, json: Tag.update(tag_params.delete(:id), tag_params)
  end

  private

  def tag_params
    return @tag_params if defined? @tag_params

    @tag_params = parse!(only: %i[id title])
  end

end
