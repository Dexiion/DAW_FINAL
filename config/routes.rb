Rails.application.routes.draw do
  get 'filtered_cars/index'
  resources :users, only: [:new, :create, :edit, :update, :show, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "cars/new", to:"cars#new"
  get "cars/:id", to:"cars#show"
  get "cars", to:"cars#index"
  post "cars", to:"cars#create"
  get "posts", to:"posts#index"

  get "/login", to: 'sessions#login'
  post "/login", to: 'sessions#create'
  post "/logout", to: 'sessions#destroy'
  get "/logout", to: 'sessions#destroy'

  root 'home#index'

end
