class LawyersController < ApplicationController
    def index
        @reservation = Reservation.all
    end

    def create
        @lawyer = Reservation.new(lawyer_params)
        @lawyer.save
        redirect_to inventory_path(@inventory_food.inventory)
    end
    
      def update
        @lawyer = Reservation.new.find(params[:id])
        @lawyer.update(inventory_food_params)
        redirect_to inventory_path(@inventory_food.inventory)
      end
    
    
      def destroy
        @lawyer = Reservation.new.find(params[:id])
        @lawyer.destroy
        redirect_to inventory_path(@inventory_food.inventory)
      end
    
      private
    
      def lawyer_params
        params.require(:lawyer).permit(:name, :phone, :email, :location, :rates, :bio)
      end
end
  