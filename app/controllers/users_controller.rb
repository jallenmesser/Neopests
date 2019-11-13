class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @pests = @user.pests
  end

  def new
    @user = User.new 
  end

  def create
    @user = User.create(user_params)
    redirect_to new_user_pest_path(@user)
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
    redirect_to new_user_path
  end

  # def primary_pest_id
  #   @user = User.find(params[:primary_pest_id])
  # end 


  private 

  def user_params
    params.require(:user).permit(:username, :password, :email)
  end 


end
