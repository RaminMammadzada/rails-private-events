Rails.application.routes.draw do

  root "users#index"

  resources :sessions, only: [:new, :create, :destroy]
  resources :users

  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy'

  get "signup", to: "users#new", as: "signup"
  get "login", to: "sessions#new", as: "login"
  get "logout", to: "sessions#destroy", as: "logout"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
