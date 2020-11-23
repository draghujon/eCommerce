class ProvincesController < ApplicationController

  def index
    @provinces = Province.all
  end

  def show
    @province = Province.find(params[:id])
  end

  def update
    w_params = params.require(:province).permit(:tax_1, :tax_2)
    @update = Province.find(params[:id])
    @update.update(tax_1: w_params[:tax_1], tax_2: w_params[:tax_2])
    @update.save
    redirect_to request.referrer
  end
end
