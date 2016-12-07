class NotificationsController < ApplicationController
  def index
  end

  def new
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
