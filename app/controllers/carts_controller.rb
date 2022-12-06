class CartsController < ApplicationController
  before_action :checklog

  def index
    @user = current_user
    @cart = @user.cart
    @total = 0
    @cart.articles.each do |article|
      @total = @total + article.price
    end
  end

  # POST /carts or /carts.json
  def create
    @user = current_user
    ArticleCart.create!(cart: @user.cart, article_id: params[:article])
    redirect_to user_carts_path(current_user)
  end

  def destroy
    ArticleCart.find(params[:article]).destroy
  end

  def checklog
    if user_signed_in?
    else
      flash[:error] = "Tu n'es pas connecté" 
      redirect_to "/"
    end
  end

end
