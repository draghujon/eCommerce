class ProductsController < ApplicationController
  before_action :initialize_session
  before_action :load_cart

  def index
    @products = Product.order("name").page(params[:page]).all
    @user_id = current_user.id
  end

  def created_index
    @products = Product.where("created_at >= ?", Time.now - 1.week)
  end

  def updated_index
    @products = Product.where("updated_at >= ?", Time.now - 1.week)
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

  # def add_to_cart
  #   id = params[:id].to_i

  #   session[:cart] << id unless session[:cart].include?(id)
  #   redirect_to request.referrer
  # end


  def add_to_cart
    id = params[:id].to_i

    is_in_cart = false

    session[:cart].delete(1)
    session[:cart].each do |ct|
      if defined?(ct['id'])
        Product.find(ct['id'].to_i)
        if ct['id'].to_i == id

          is_in_cart = true
          ct['quantity'] = ct['quantity'].to_i + 1
        end
      end
    end

    if !is_in_cart
      cart_item = {
        id: id,
        quantity: 1
      }
      session[:cart] << cart_item
    end
    redirect_to request.referrer
  end

  def remove_from_cart
    id = params[:id].to_i
    session[:cart].delete(id)
    redirect_to request.referrer
  end

  private

  def initialize_session
    session[:visit_count] ||= 0 # Initialize the visit count on first visit.
    session[:cart] ||= []
  end

  def load_cart
    @cart = []
    session[:cart].delete(1)
    session[:cart].each do |ct|
        #@cart.push(ct)
        @cart.push({
          product: Product.find(ct['id']),
          quantity: ct['quantity']
        })
    end
    #@cart = session[:cart]
    #@cart = Product.find(session[:cart])
  end
end
