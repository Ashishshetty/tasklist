class TasksController < ApplicationController
  before_action :all_tasks, only: [:index, :create, :update, :destroy]
  before_action :set_tasks, only: [:edit, :update, :destroy]
  respond_to :html, :js, :json

  def index
    # binding.pry
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create

    @task = Task.create(task_params)
  end

  def update
    # binding.pry
     @task = Task.find(params[:id])
    @task.update_attributes(task_params)
  end

  def destroy
    @task.destroy
  end

  private

    def all_tasks
      @tasks = Task.all
    end

    def set_tasks
      @task = Task.find(params[:id])
    end

    def task_params
      params.require(:task).permit(:project_name,:task_name,:specific_task)
    end
end
