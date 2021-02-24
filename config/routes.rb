Rails.application.routes.draw do
  get "signin", to: "sessions#new", as: "signin"
  get "signout", to: "sessions#destroy", as: "signout"

  root "users#index"
  resources :events
  resources :users
  resources :sessions
  resources :attendings
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
