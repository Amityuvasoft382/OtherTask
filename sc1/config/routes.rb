Rails.application.routes.draw do
  resources :products
  root 'products#index'
  post "checkout/create", to: "checkout#create"
  resources :webhooks, only: [:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
