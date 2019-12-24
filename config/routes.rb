Rails.application.routes.draw do
  get 'product/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :products

  root 'product#index'
end
