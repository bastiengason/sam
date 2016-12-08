class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    category_name = params[:category]
    category = Category.find_by(name: category_name)
    @task.category = category
    @task.frequency = params[:frequency]
    @task.distance = params[:distance]
    @task.time_slot = params[:time_slot]
    @task.user = current_user
    @task.save!
    redirect_to task_path(@task)
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to tasks_path
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
