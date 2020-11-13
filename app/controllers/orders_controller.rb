class OrdersController < ApplicationController
  def index
    @orders = Order.all#Order.order("name").page(params[:page]).all
  end

  def show
    @order = Order.find(params[:id])
  end
end
