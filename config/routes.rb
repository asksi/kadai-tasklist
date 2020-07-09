Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root to: "tasks#index"
    
    resources :tasks
    
    get "signup", to: "users#new"
    # get "users", to: "users#index"
    # post "users/:id/create", to: "users#create"
    resources :users, only: [:create, :index]
end
