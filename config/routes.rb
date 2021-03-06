Rails.application.routes.draw do
  resources :pages, except: [:show]
  get '/pages/:permalink' => "pages#permalink", as: :permalink

  get '/customers/index', to: "customers#index", as: "customers"
  get '/customers/show/(:id)', to: "customers#show", as: "customer"

  devise_for :users
  get 'provinces/index'
  get 'provinces/show/(:id)', to: "provinces#show", as: "province"
  put 'provinces/show/(:id)', to: "provinces#update", as: "update"

  scope '/checkout' do
    post 'create', to: 'checkout#create', as: 'checkout_create'
    get 'cancel', to: 'checkout#cancel', as: 'checkout_cancel'
    get 'success', to: 'checkout#success', as: 'checkout_success'
  end

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'categories/index'
  get 'categories/show'
  get 'products/index'
  get 'orders/index', to: "orders#index", as: "orders"
  get 'orders/show/(:id)', to: "orders#show", as: "order"

  post '/products/add_to_cart/:id', to: 'products#add_to_cart', as: 'add_to_cart'
  delete '/products/remove_from_cart/:id', to: 'products#remove_from_cart', as: 'remove_from_cart'

  resources :products, :categories, only: %i[index] do
    collection do
      get "search"
    end
  end

  get 'products/created_index'
  get 'products/updated_index'
  get "products/show/(:id)", to: "products#show", as: "product"
  resources :categories, :customers, only: %i[index show]
  root to: "products#index", as: "root"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
