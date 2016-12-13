class ProfilesController < ApplicationController
  before_action :set_user, only: [:edit, :show, :update]
  def show
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to dashboard_index_path
  end

  private

  def set_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:name, :email, :encrypted_password)
  end
end

