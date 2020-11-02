Rails.application.routes.draw do
  get 'category/index'
  get 'category/show'
  get 'product/index'
  get "/product/show/(:id)", to: "product#show", as: "product"
  resources :category, only: %i[index show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
