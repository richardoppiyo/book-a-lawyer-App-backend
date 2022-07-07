class UsersController < ApplicationController
  def index; end

  def create
    @current_user = current_user
    @user = current_user.User.new(user_params)
    @user.save
  end

  def update
    @current_user = current_user
    @user = current_user.User.new.find(params[:id])
    @user.update(inventory_food_params)
  end

  def destroy
    @current_user = current_user
    @user = current_user.User.new.find(params[:id])
    @user.destroy
    redirect_to inventory_path(@inventory_food.inventory)
  end

  private

  def user_params
    params.require(:user).permit(:name, :phone, :quantity, :email)
  end
end
