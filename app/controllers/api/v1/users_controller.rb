class Api::V11::UsersController < ApplicationController
  def index; end

  def create
    user = User.new(user_params)
    if user.save
      render json: { result: 'User Created successful' }
    else
      render json: { result: 'Something went wrong' }, status: :unprocessable_entity
    end
  end

  def update
    user = current_user.User.new.find(params[:id])
    if user.update(user_params)
      render json: { result: 'User updated successfully' }
    else
      render json: { result: 'Something went wrong' }, status: :unprocessable_entity
    end
  end

  def destroy
    user = current_user.User.new.find(params[:id])
    user.destroy
    render json: { result: 'User deleted successfully' }
  end

  private

  def user_params
    params.require(:user).permit(:name, :phone, :quantity, :email)
  end
end
