class CartsController < ApplicationController
  before_action :checklog

  def index
    @user = current_user
    @cart = @user.cart
    @total = 0
    @cart.articles.each do |article|
      @total = @total + article.price.to_i
    end
  end

  # POST /carts or /carts.json
  def create
    @user = current_user
    @art = ArticleCart.create!(cart: @user.cart, article_id: params[:article])
    @total = @art.article.price + Cart.find(@user.cart.id).total
    @c = Cart.find(@user.cart.id)
    @c.update(total: @total)
    redirect_to user_carts_path(current_user)
  end

  def destroy
    @art = ArticleCart.find(params[:article_id])
    @c = Cart.find(current_user.cart.id)
    @total = @c.total - @art.article.price
    @c.update(total: @total)
    @art.destroy
    redirect_to user_carts_path(current_user)
  end

  def checklog
    if user_signed_in?
    else
      flash[:error] = "Tu n'es pas connecté" 
      redirect_to "/"
    end
  end

end
