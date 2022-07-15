class Api::V1::ReservationsController < ApplicationController
  before_action :authenticate_user!

  def index
    reservations = current_user.reservations
    render json: { reservations: }
  end

  def create
    reservation = Reservation.new(reservation_params)
    if reservation.save
      render json: { result: 'success' }
    else
      render json: { result: 'failed', error: reservation.errors }, status: :unprocessable_entity
    end
  end

  def update
    reservation = Reservation.find(params[:id])
    if reservation.update(reservation_params)
      render json: { result: 'success' }
    else
      render json: { result: 'failed', error: reservation.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    reservation = Reservation.find(params[:id])
    reservation.destroy
    render json: { result: 'success' }
  end

  private

  def reservation_params
    params.require(:reservation).permit(:reservationdate, :is_active, :duration)
  end
end
