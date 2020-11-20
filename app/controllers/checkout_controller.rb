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

    @user = User.find(session['warden.user.user.key'][0][0])

    @item = []
    #@user_id = User.find(params[:user_id])


    products.each do |prod|
      @item.push({
        name: prod.name,
        description: prod.name,
        amount: (prod.unit_price * 100).to_i,
        currency: 'cad',
        quantity: 1

      },
      {
        name: "Tax 1 #{@user.province.tax_1 * 100}%",
        amount: ((@user.province.tax_1 * prod.unit_price) * 100).round.to_i,
        currency: 'cad',
        quantity: 1
      },
      {
        name: "Tax 2 #{@user.province.tax_2 * 100}%",
        amount: ((@user.province.tax_2 * prod.unit_price) * 100).round.to_i,
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
    @tax1 = @user.province.tax_1
    @tax2 = @user.province.tax_2
    @tax_rate_1 = Stripe::TaxRate.create({
      display_name: 'Tax 1',
      description: 'Sales Tax',
      jurisdiction: 'N/A',
      percentage: (@tax1 * 100).to_i,
      inclusive: false,
    })

    @tax_rate_2 = Stripe::TaxRate.create({
      display_name: 'Tax 2',
      description: 'Provincial Tax',
      jurisdiction: 'N/A',
      percentage: (@tax2 * 100).to_i,
      inclusive: false,
    })

    @prov = @user.province.name
    #@customer_id = Stripe::Customer.retrieve(@session.payment_intent)
    @session = Stripe::Checkout::Session.create(
      line_items: @item,
      payment_method_types: ['card'],
      success_url: checkout_success_url + '?session_id={CHECKOUT_SESSION_ID}',
      cancel_url: checkout_cancel_url,
      billing_address_collection: 'required'
    )

    respond_to do |format|
      format.js # render create.js.erb
    end
  end

  def success

    @user = User.find(session['warden.user.user.key'][0][0])

    if !@user.nil?

      if @user.stripe_customer_id.nil?
        @user.stripe_customer_id = Stripe::Customer.create(
          email: @user.email
        ).id
        @user.save
      end
    end
    # @customer = Stripe::Customer.create({
    #   name: @user
    # })
    @session = Stripe::Checkout::Session.retrieve(params[:session_id])
    @payment_intent = Stripe::PaymentIntent.retrieve(@session.payment_intent)
  end
end
