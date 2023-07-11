Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :movies, only: [:index, :show]
  resources :favorites, only: [:index, :create, :delete]
  resources :users, only: [:create]
  resources :sessions, only: [:create]
end
