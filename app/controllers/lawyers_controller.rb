class LawyersController < ApplicationController
    def index
        @lawyer = Lawyer.all
    end

    def create
        @current_user = current_user
        @lawyer = current_user.Lawyer.new(lawyer_params)
        @lawyer.save
        redirect_to lawyers_path
    end
    
      def update
        @current_user = current_user
        @lawyer = current_user.Lawyer.new.find(params[:id])
        @lawyer.update(lawyer_params)
        redirect_to lawyers_path
      end
    
      def show
        @lawyer = Lawyer.find(params[:id])
      end
    
      def destroy
        @current_user = current_user
        @lawyer = current_user.Lawyer.new.find(params[:id])
        @lawyer.destroy
        redirect_to lawyers_path
      end
    
      private
    
      def lawyer_params
        params.require(:lawyer).permit(:name, :phone, :email, :location, :rates, :bio)
      end
end
  