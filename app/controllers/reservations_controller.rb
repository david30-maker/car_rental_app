class ReservationsController < ApplicationController
  def new
    @car = Car.find(params[:car_id])
    @reservation = @car.reservations.new
  end

  def create
    @car = Car.find(params[:reservation][:car_id])
    @reservation = @car.reservations.build(reservation_params)
    if @reservation.save
      @car.update(available: false)
      redirect_to @car, notice: "Successfully reserved"
    else
      render :new
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:user_name, :user_email, :start_date, :end_date, :car_id)
  end
end
