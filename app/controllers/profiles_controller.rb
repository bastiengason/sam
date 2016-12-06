class ProfilesController < ApplicationController
  before_action :set_user, only: [:edit, :show, :update]
  def show
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to profile_path
  end

  private

  def set_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:name, :email, :encrypted_password)
  end
end

# class UsersController < ApplicationController
#   before_action :set_user, only: [:show]
#   def index
#     @users = User.all
#   end

#   def new
#     @user = User.new
#   end

#   def create
#     @user = User.new(user_params)
#     @user.save
#     redirect_to rooth_path
#   end

#   def update
#     @user.update(user_params)
#     redirect_to users_show_path
#   end

#   def edit
#   end

#   def show

#   end

#   def destroy
#   end

#   private

#   def set_user
#     @user = User.find(params[:id])
#   end

#   def user_params
#     params.require(:user).permit(:name, :email, :encrypted_password)
#   end


# end
