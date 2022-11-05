Rails.application.routes.draw do
  resources :movies
  root 'movies#index'
  post "checkout", to: 'movies#checkout'
  get 'success', to: "movies#success"
  get 'fail', to: "movies#fail"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
