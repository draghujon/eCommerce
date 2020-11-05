class ProductController < ApplicationController
  def index
    @products = Product.order("name").page(params[:page]).all#Product.includes(:category).all
  end

  def show
    @product = Product.find(params[:id])
    @show_link = false
  end

  def search
    wildcard_search = "%#{params[:keywords]}%"
    @category_search = ""
    if params[:category].empty?
      @products = Product.where("name LIKE ?", wildcard_search)
    else
      @category_search = Category.where("id = ?", params[:category]).first.name
      @products = Product.where("name LIKE ?", wildcard_search)
                   .where("category_id = ?", params[:category])
    end
  end
end
