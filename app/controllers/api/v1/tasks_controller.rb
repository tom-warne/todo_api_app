class API::V1::TasksController < API::V1::BaseController

  def create
    render status: :created, json: Task.create(task_params.except(:id))
  end

  def destroy
    render status: :ok, json: Task.destroy(task_params[:id])
  end

  def index
    render status: :ok, json: Task.all
  end

  def update
    render status: :ok, json: Task.update(task_params.delete(:id), task_params)
  end

  private

  def task_params
    return @task_params if defined? @task_params

    @task_params =
      parse!(only: %i[id tags title]).tap do |tags: [], **_|
        tags.map! { |tag_title| Tag.find_or_create_by(title: tag_title) }
      end
  end

end
