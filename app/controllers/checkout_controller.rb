class CheckoutController < ApplicationController
  def create
    if params[:id].nil?
      products = Product.find(session[:cart])
    else products = [
      Product.find(params[:id])]

    end

    if products.nil?
      redirect_to root_path
      return
    end

    @item = []

    products.each do |prod|
      @item.push({
        name: prod.name,
        amount: (prod.unit_price * 100).to_i,
        currency: 'cad',
        quantity: 1
      })
    end

    @session = Stripe::Checkout::Session.create(
      line_items: @item,
      payment_method_types: ['card'],
      success_url: checkout_success_url + '?session_id={CHECKOUT_SESSION_ID}',
      cancel_url: checkout_cancel_url

    )

    respond_to do |format|
      format.js # render create.js.erb
    end
  end

  def success
    @session = Stripe::Checkout::Session.retrieve(params[:session_id])
    @payment_intent = Stripe::PaymentIntent.retrieve(@session.payment_intent)
  end
end
