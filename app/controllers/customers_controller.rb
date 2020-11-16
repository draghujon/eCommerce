class CustomersController < ApplicationController
  def index
    @customers = Customer.order("name").all
  end

  def show
    @customer = Customer.find(params[:id])
  end
end
