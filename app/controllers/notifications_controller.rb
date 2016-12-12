class NotificationsController < ApplicationController

  before_action :set_user, only: :notif
  def index
  end

  def notif

    render "notif", layout: nil
  end

  def set_user
@user = current_user
  end

  def create
  end

  def update
  end

  def edit
  end

  def show
  end

  def destroy
  end

  def notifdone

 @notifications = current_user.notications
      @notifications.each do |notification|

         notification.status = "done" if notification.status == "to_show"
      end
      @notification.save!
  end

  def notifcancell
 @notifications = current_user.notications
      @notifications.each do |notification|

         notification.status = "not done" if notification.status != "to_show"
      end
      @notification.save!

  end

end
