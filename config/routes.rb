Rails.application.routes.draw do

  resources :events 
  resources :attendees
  resources :enrollments, only: [:create, :destroy]
  root "events#index"

  resources :sessions, only: [:new, :create, :destroy]
  resources :users

  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy'

  get "signup", to: "users#new", as: "signup"
  get "login", to: "sessions#new", as: "login"
  get "logout", to: "sessions#destroy", as: "logout"
  post '/join',  to:'enrollments#create'
  get '/join', to:'enrollments#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
