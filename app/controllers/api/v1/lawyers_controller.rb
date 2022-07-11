class Api::V1::LawyersController < ApplicationController
  before_action :authenticate_user!

  def index
    lawyer = Lawyer.all
    render json: { lawyer: }
  end

  def create
    lawyer = Lawyer.new(lawyer_params)
    if lawyer.save
      render json: { result: 'Lawyer created successfully' }
    else
      render json: { result: 'Something went wrong' }, status: :unprocessable_entity
    end
  end

  def update
    lawyer = current_user.Lawyer.new.find(params[:id])
    if lawyer.update(lawyer_params)
      render json: { result: 'Lawyer updated successfully' }
    else
      render json: { result: 'Something went wrong' }, status: :unprocessable_entity
    end
  end

  def show
    lawyer = Lawyer.find(params[:id])
    render json: { lawyer: }
  end

  def destroy
    lawyer = current_user.Lawyer.new.find(params[:id])
    lawyer.destroy
    render json: { result: 'Lawyer removed successfully' }
  end

  private

  def lawyer_params
    params.require(:lawyer).permit(:name, :phone, :email, :location, :rates, :bio)
  end
end
