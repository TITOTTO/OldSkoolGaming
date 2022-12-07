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
  end

  def is_admin?
    redirect_to root_path if current_user.admin == false
  end

end
