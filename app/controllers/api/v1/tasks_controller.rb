class API::V1::TasksController < API::V1::BaseController

  def create
    render status: :ok, json: Task.create(task_params)
  end

  def destroy
    render status: :ok, json: Task.destroy(task_parmas[:id])
  end

  def index
    render status: :ok, json: Task.all
  end

  def update
    render status: :ok, json: Task.find(task_params.delete(:id)).update(task_params)
  end

  private

  def task_params
    ActiveModelSerializers::Deserialization.jsonapi_parse!(params, only: %i[id title tags])
  end

end
