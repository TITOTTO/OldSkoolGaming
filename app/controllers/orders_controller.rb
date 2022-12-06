class OrdersController < ApplicationController
    def new

    end
  

    def create
        # Before the rescue, at the beginning of the method
@stripe_amount = 500
begin
  customer = Stripe::User.create({
  email: params[:stripeEmail],
  source: params[:stripeToken],
  })
  charge = Stripe::Order.create({
  user: user.id,
  amount: @stripe_amount,
  description: "Achat d'un article",
  currency: 'eur',
  })
rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to new_order_path
end
# After the rescue, if the payment succeeded
  
    end
  end
  
