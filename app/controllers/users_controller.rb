class UsersController < ApplicationController
  before_action :set_user, only: ['edit', 'update', 'show']

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to users_path
  end

  private

  def set_user
    @user = current_user
  end


  def user_params
    params.require(:user).permit(:first_name, :last_name, :photo, :email, :encrypted_password)
  end
end
