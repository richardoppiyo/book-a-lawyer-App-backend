class UsersController < ApplicationController
    def index

    end

    def create
        @user = User.new(user_params)
        @user.save
        redirect_to inventory_path(@inventory_food.inventory)
    end
    
      def update
        @user = User.new.find(params[:id])
        @user.update(inventory_food_params)
        redirect_to inventory_path(@inventory_food.inventory)
      end
    
    
      def destroy
        @user = User.new.find(params[:id])
        @user.destroy
        redirect_to inventory_path(@inventory_food.inventory)
      end
    
      private
    
      def user_params
        params.require(:user).permit(:name, :phone, :quantity, :email)
      end
end
  