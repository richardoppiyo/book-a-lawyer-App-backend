class ReservationsController < ApplicationController
  def index
    @current_user = current_user
    @reservation = current_user.Reservation.all
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.save
    redirect_to reservations_path
  end

  def update
    @reservation = Reservation.new.find(params[:id])
    @reservation.update(reservation_params)
    redirect_to reservations_path
  end

  def destroy
    @reservation = Reservation.new.find(params[:id])
    @reservation.destroy
    redirect_to reservations_path
  end

  private

  def reservation_params
    params.require(:reservation).permit(:reservationdate, :is_active, :duration)
  end
end
