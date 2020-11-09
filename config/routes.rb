Rails.application.routes.draw do
  scope '/checkout' do
    post 'create', to: 'checkout#create', as: 'checkout_create'
    get 'cancel', to: 'checkout#cancel', as: 'checkout_cancel'
    get 'success', to: 'checkout#success', as: 'checkout_success'
  end

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'category/index'
  get 'category/show'
  get 'product/index'

  post 'product/add_to_cart/:id', to: 'product#add_to_cart', as: 'add_to_cart'
  delete 'product/remove_from_cart/:id', to: 'product#remove_from_cart', as: 'remove_from_cart'

  resources :product, :category, only: %i[index] do
    collection do
      get "search"
    end
  end

  get "/product/show/(:id)", to: "product#show", as: "product"
  resources :category, only: %i[index show]
  root to: "product#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
