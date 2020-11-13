class OrdersController < ApplicationController
  def index
    @orders = Order.all#Order.order("name").page(params[:page]).all
  end
end
