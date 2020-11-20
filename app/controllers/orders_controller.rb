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
  end
end
