Rails.application.routes.draw do
  devise_for :users, controllers: {
        #sessions: 'users/sessions'
        confirmations: 'users/confirmations',
        
      }
  root 'hospital#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
