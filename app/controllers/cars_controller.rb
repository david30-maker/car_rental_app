class CarsController < ApplicationController
  def index
    @cars = Car.where(available: true)
  end

  def show
    @car = Car.find(params[:id])
  end
end
