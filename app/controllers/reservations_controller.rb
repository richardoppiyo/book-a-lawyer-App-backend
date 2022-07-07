class ReservationsController < ApplicationController
    def index
        @reservation = Reservation.all
    end

    def create
        @reservation = Reservation.new(reservation_params)
        @reservation.save
        redirect_to inventory_path(@inventory_food.inventory)
    end
    
      def update
        @reservation = Reservation.new.find(params[:id])
        @reservation.update(inventory_food_params)
        redirect_to inventory_path(@inventory_food.inventory)
      end
    
    
      def destroy
        @reservation = Reservation.new.find(params[:id])
        @reservation.destroy
        redirect_to inventory_path(@inventory_food.inventory)
      end
    
      private
    
      def reservation_params
        params.require(:reservation).permit(:reservationdate, :is_active, :duration)
      end
end
  