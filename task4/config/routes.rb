Rails.application.routes.draw do
  devise_for :users
  resources  :posts
  # get 'home/index'
  root 'posts#index'
  resources :comments

   # post "checkout/create", to: "checkout#create"
  post " /posts/:id/lock", to: "posts#lock", as: "lock_post" 

  post " /posts/:id/unlock", to: "posts#unlock", as: "unlock_post"

  post " /posts/:id/approve", to: "posts#approve", as: "approve_post" 
  post " /posts/:id/deapprove", to: "posts#deapprove", as: "deapprove_post"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
