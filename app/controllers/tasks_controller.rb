class TasksController < ApplicationController
  def index
  end

  def show
  end

  def create
    binding.pry
    task =  Tasks::Creator.new(attributes: task_params).run
    binding.pry
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
