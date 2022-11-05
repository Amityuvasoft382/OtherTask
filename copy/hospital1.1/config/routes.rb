Rails.application.routes.draw do
resources :departments 
  # get 'departments/index'
  # get 'departments/show'
  # get 'departments/new'
  # get 'departments/edit'
  # get 'departments/_form'
  devise_for :users, controllers: {
        #sessions: 'users/sessions'
        registrations: 'users/registrations'
      },
  :path_prefix => 'my'
  resources :users



  root 'users#index'
  #resources :home
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
