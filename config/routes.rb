Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'category/index'
  get 'category/show'
  get 'product/index'

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
