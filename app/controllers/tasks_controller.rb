class TasksController < ApplicationController
  def index
  end

  def show
  end

  def create
    task =  Tasks::Creator.new(attributes: task_params, current_user: current_user).call
    render json: { task: task }
  end

  def update
  end

  def destroy
  end

  private

  def task_params
    params.require(:task).permit(
      :id,
      :title,
      :description,
      :status
      )
  end
end
