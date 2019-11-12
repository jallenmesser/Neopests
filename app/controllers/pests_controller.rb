class PestsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
  end

  def show
    @pest = Pest.find(params[:id])
  end

  def new
    @pest = Pest.new
  end

  def create
    @pest = Pest.create(pest_params)
    redirect_to user_pest_path(@pest.user_id, @pest.id)
  end

  def edit
    @pest = Pest.find(params[:id])
  end

  def update
    @pest = Pest.find(params[:id])
    @pest.update(pest_params)
    redirect_to user_pest_path(@pest.user_id, @pest.id)
  end


  private

  def pest_params
    params.require(:pest).permit(:name, :species, :color, :home, :user_id)
  end 


end
