class TasksController < ApplicationController
  def index
    tasks = Task.where(user_id: current_user.id)
    render json: { tasks: tasks }
  end

  def show
    render json: { task: task }
  end

  def create
    task =  Tasks::Creator.new(attributes: task_params, current_user: current_user).call
    render json: { task: task }
  end

  def update

  end

  def destroy
    task.destroy!
  end

  private

  def task
    @task ||= Task.find(id)
  end

  def task_params
    params.require(:task).permit(
      :id,
      :title,
      :description,
      :status
      )
  end
end
