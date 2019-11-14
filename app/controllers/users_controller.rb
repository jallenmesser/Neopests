class UsersController < ApplicationController
  before_action :authorized, only: [:show, :edit]
  def show
    @user = User.find(params[:id])
    @pests = @user.pests
  end

  def new
    @user = User.new 
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to login_path
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy 
    session[:user_id] = nil
    redirect_to welcome_path
  end

  private 

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation, :email)
  end 


end
