class VegetablesController < ApplicationController
  
  def index
    @vegetables = Vegetable.all
  end

  def new
    @vegetable = Vegetable.new
  end

  def create
    @vegetable = Vegetable.new(params.require(:vegetable).permit(:name, :quanity))

    if @vegetable.save
      redirect_to vegetables_path
    else
      render :new
    end
  end


end