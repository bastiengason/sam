class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    check_notif
  end

  private

  def check_notif
    @notif = false
    if !current_user.nil?
      current_user.tasks.each do |task|
        task.notifications.each do |notification|
          @notif = true if notification.status == "to_show"
        end
      end
    end
    @notif
  end
end
