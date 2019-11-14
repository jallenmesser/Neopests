class PestsController < ApplicationController
  before_action :authorized
  def index
    @user = User.find(params[:user_id])
  end

  def show
    @user = User.find(params[:user_id])
    @pest = Pest.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
    @pest = Pest.new
  end

  def create
    @pest = Pest.create(pest_params)
    redirect_to user_pest_path(@pest.user_id, @pest.id)
  end

  def edit
    @user = User.find(params[:user_id])
    @pest = Pest.find(params[:id])
  end

  def update
    @pest = Pest.find(params[:id])
    @pest.update(pest_params)
    redirect_to user_pest_path(@pest.user_id, @pest.id)
  end

  def abandon
    @pest = Pest.find(params[:id])
    @pest.update(user_id: nil)
    redirect_to adoptions_path
  end

  def primary
    @user = User.find(params[:user_id])
    @user.update(primary_pest_id: params[:id])
    redirect_to user_pests_path
  end

  def adopt
    @pest = Pest.find(params[:id])
    @pest.update(user_id: params[:user_id])
    redirect_to adoptions_path
  end


  private

  def pest_params
    params.require(:pest).permit(:name, :species, :color, :home, :user_id)
  end 


end
