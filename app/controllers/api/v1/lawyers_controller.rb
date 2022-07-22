class Api::V1::LawyersController < ApplicationController
  before_action :authenticate_user!
  authorize_resource
  skip_authorize_resource only: %i[index show]

  def index
    lawyers = Lawyer.all
    render json: { lawyers: }
  end

  def create
    lawyer = Lawyer.new(lawyer_params)
    if lawyer.save
      render json: { result: 'success', lawyer: }
    else
      render json: { result: 'failed', error: lawyer.errors }, status: :unprocessable_entity
    end
  end

  def update
    lawyer = Lawyer.find(params[:id])
    if lawyer.update(lawyer_params)
      render json: { result: 'success', lawyer: }
    else
      render json: { result: 'failed', error: lawyer.errors }, status: :unprocessable_entity
    end
  end

  def show
    lawyer = Lawyer.find(params[:id])
    render json: { lawyer: }
  end

  def destroy
    lawyer = Lawyer.find(params[:id])
    lawyer.destroy
    render json: { result: 'success' }
  end

  private

  def lawyer_params
    params.require(:lawyer).permit(:name, :phone, :email, :location, :rates, :bio, :avatar)
  end
end
