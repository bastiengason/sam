class DashboardController < ApplicationController
  def category
    @tasks = current_user.tasks
    @category = Category.find(params[:id])
    @category_name = task.find(params[:category_id])
  end
end
