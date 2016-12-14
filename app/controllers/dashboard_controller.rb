class DashboardController < ApplicationController
  def category
    @tasks = current_user.tasks
    @category = Category.find(params[:id])
  end
end
