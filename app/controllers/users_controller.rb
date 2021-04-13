class UsersController < ApplicationController
  def index
    @users = User.all
    @user = current_user
  end
  
  def show
    @user = User.find(params[:id])
    @books = Book.where(user_id:params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end
  
  def user_params
    params.require(:user).permit(:name, :profile_image, :profile_intro)
  end
end
