class PestsController < ApplicationController
  def index
    @pests = Pest.all
   # @pest = Pest.find(params)
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end
end
