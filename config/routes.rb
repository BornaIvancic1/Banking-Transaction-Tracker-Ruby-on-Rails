Rails.application.routes.draw do
  root 'users#index' # Set the root route to users#index

  # Define routes for Users controller
  resources :users, only: [:new, :create, :show, :index]

  # Define routes for Sessions controller
  resources :sessions, only: [:create, :destroy]

  # Custom route for login
  get 'login', to: 'sessions#new'
  delete 'logout', to: 'sessions#destroy'
end
