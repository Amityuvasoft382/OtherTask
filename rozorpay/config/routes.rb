Rails.application.routes.draw do
  resources :products
  resources :checkouts
  get "success", to: "checkouts#success"
  root 'products#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
