Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :movies, only: [:index]
  resources :favorites, only: [:index, :create, :show, :destroy]
  resources :users, only: [:create]
  resources :sessions, only: [:create]
  resources :genres, only: [:index]
end
