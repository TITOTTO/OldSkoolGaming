class UserController < ApplicationController
  before_action :is_admin?, only: [:index]
  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    if @user.admin == true
      @user.update(admin: false) 
    else 
      @user.update(admin: true)
    end
    redirect_to user_index_path
  end
  

  def is_admin?
    redirect_to root_path if current_user.admin == false
  end

  def destroy
    @user = User.find(params[:user_id])
    @user.cart.destroy
    @user.destroy
    redirect_to user_index_path
  end


  
end
