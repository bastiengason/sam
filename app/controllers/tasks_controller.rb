class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new
    @task = current_user.tasks.build
  end

  def create
    @task = Task.new(task_params)
    @task.user = current_user
    @task.save!
    redirect_to tasks_show_path
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to tasks_index_path
  end

  def edit
    @task = Task.find(params[:id])
  end

  def show
    @task = Task.find(params[:id])
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_index_path
  end

  def select_category
    @categories = Category.all
  end

  private

  def set_task
    @task = Task.find(params[:task_id])
  end

  def task_params
    params.require(:task).permit(:name, :distance, :frequency, :status, :category_id)
  end
end
