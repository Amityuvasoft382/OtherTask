Rails.application.routes.draw do
  resources :posts
  devise_for :users
  root 'posts#index'
  resources :comments

  post " /posts/:id/lock", to: "posts#lock", as: "lock_post" 
  post " /posts/:id/unlock", to: "posts#unlock", as: "unlock_post"
  post " /posts/:id/approve", to: "posts#approve", as: "approve_post"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
