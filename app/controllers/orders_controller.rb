class OrdersController < ApplicationController
    def new

    end
  

    def create
        # Before the rescue, at the beginning of the method
      @user = current_user
      @stripe_amount = @user.cart.total
      begin
        customer = Stripe::Customer.create({
        email: params[:stripeEmail],
        source: params[:stripeToken],
        })
        charge = Stripe::Charge.create({
          customer: customer.id,
          amount: @stripe_amount,
          description: "Achat d'un produit",
          currency: 'eur',
        })
      rescue Stripe::CardError => e
        flash[:error] = e.message
        redirect_to new_order_path
      end
      # After the rescue, if the payment succeeded
      Order.create(stripetoken: params[:stripeToken], price: @stripe_amount, user: @user)
      @user.cart.article_carts.each do |cart|
        ArticleOrder.create!(order: Order.last, article: cart.article)
        cart.destroy
      end

      redirect_to new_order_path
    end
end