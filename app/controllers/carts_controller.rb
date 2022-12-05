class CartsController < ApplicationController
  before_action :checklog

  def index
    @user = current_user
    @total = 0
    @user.carts.each do |cart| # On passe sur tous les articles pour récupérer le total des prix
      @total = @total + cart.article.price
    end
  end

  # POST /carts or /carts.json
  def create

  end

  def destroy

  end

  def checklog
    if user_signed_in?
    else
      flash[:error] = "Tu n'es pas connecté" 
      redirect_to "/"
    end
  end

end
