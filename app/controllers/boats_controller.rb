class BoatsController < ApplicationController

  def index
    @boats = Boat.all
  end

  def show
    @boat = Boat.find(params[:id])
  end

  def create
    @boat = Boat.new(boat_params)
    if @boat.save
      redirect_to boat_path(@boat)
    else
      render "pages/home"
    end
  end

  private

  def boat_params
    params.require(:boat).permit(:name, :description, :price)
  end

end
