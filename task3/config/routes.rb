Rails.application.routes.draw do
  devise_for :users
  resources :products
  root 'products#index'

  post "checkout/create", to: "checkout#create"
  get 'checkout/success', to: "checkout#success"
  get 'checkout/fail', to: "checkout#fail"
  get 'checkout/out_of_stock', to: "checkout#out_of_stock"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
