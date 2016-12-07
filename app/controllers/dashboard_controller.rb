class DashboardController < ApplicationController
  def category
    @tasks = current_user.tasks
  end
end
