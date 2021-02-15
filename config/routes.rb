Rails.application.routes.draw do
  root "users#index"
  resources :events
  # resources :users
  resources :users do
    get "signin", on: :collection
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
