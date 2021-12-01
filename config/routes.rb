Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "cars/new", to:"cars#new"
  get "cars/:id", to:"cars#show"
  get "cars", to:"cars#index"
  post "cars", to:"cars#create"
  root 'home#index'

end
