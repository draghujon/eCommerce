class OrdersController < ApplicationController
  def index
    @orders = Order.all#Order.order("name").page(params[:page]).all
  end

  def show
    if current_user.admin_user == 0 && params[:id] != current_user.id.to_s
      redirect_to order_path(current_user.id)
      return
    end
    @orders = Order.where(customer_id: params[:id])
    @customer = Customer.find(params[:id])

    # id = Product.first.id

    # is_in_cart = false

    # session[:cart].each do |ct|
    #   if ct.id == id
    #     is_in_cart = true
    #     ct.quantity += 1
    #   end
    # end

    # if is_in_cart = false
    #   cart_item = {
    #     id: id,
    #     quantity: 1
    #   }
    #   session[:cart] << cart_item
    # end
  end
end
