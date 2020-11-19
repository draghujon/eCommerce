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
    #@user_id = User.find(params[:user_id])
    @user_id = User.find(session['warden.user.user.key'][0][0])

    products.each do |prod|
      @item.push({
        name: prod.name,
        amount: (prod.unit_price * 100).to_i,
        currency: 'cad',
        quantity: 1

      },
      {
        name: "Tax 1 #{@user_id.province.tax_1}",
        amount: ((@user_id.province.tax_1 * prod.unit_price) * 100).round.to_i,
        currency: 'cad',
        quantity: 1
      },
      {
        name: "Tax 2 #{@user_id.province.tax_2}",
        amount: ((@user_id.province.tax_2 * prod.unit_price) * 100).round.to_i,
        currency: 'cad',
        quantity: 1
      }
    )
    end
    #WebConsole:Module(@user)

    # @item.push({
    #   name: "Tax 1",
    #   amount: (@user_id.province.tax_1 * prod.unit_price),
    #   currency: 'cad',
    #   quantity: 1
    # })

    # @item.push({
    #   name: "Tax 2",
    #   amount: (@user_id.province.tax_2 * 100),
    #   currency: 'cad',
    #   quantity: 1
    # })

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
