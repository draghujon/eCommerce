Rails.application.routes.draw do
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
  resources :categories, only: %i[index show]
  root to: "products#index", as: "root"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
