class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def show
    if current_user.admin_user == 0 && params[:id] != current_user.id.to_s
      redirect_to customer_path(current_user.id)
      return
    end
    @customer = Customer.find(params[:id])
    current_user.admin_user = 1
    current_user.save
  end
end
