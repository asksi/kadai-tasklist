Rails.application.routes.draw do
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root to: "tasks#index"
    
    get "login", to: "sessions#new"
    post "login", to: "sessions#create"
    delete "logout", to: "sessions#destroy"
    
    resources :tasks
    
    get "signup", to: "users#new"
    # get "users", to: "users#index"
    # post "users/create", to: "users#create"
    resources :users, only: [:create, :index]
end
