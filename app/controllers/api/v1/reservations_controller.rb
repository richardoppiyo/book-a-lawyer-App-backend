class Api::v1::ReservationsController < ApplicationController
  def index
    @current_user = current_user
    @reservation = current_user.Reservation.all
    render json: { reservation: @reservation }
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      render json: { result: 'Reservation successful' }
    else
      render json: { result: 'Something went wrong' }, status: :unprocessable_entity
    end
  end

  def update
    @reservation = Reservation.new.find(params[:id])
    if @reservation.update(reservation_params)
      render json: { result: 'Reservation updated successfully' }
    else
      render json: { result: 'Something went wrong' }, status: :unprocessable_entity
    end
  end

  def destroy
    @reservation = Reservation.new.find(params[:id])
    @reservation.destroy
    render json: { result: 'Reservation cancelled successfully' }
  end

  private

  def reservation_params
    params.require(:reservation).permit(:reservationdate, :is_active, :duration)
  end
end
