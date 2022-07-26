Rails.application.routes.draw do
  get 'home/index'
  root "home#index"
  devise_for :users
  resources :categories
  resources :tasks
  resources :users # Fix on NoMethodError in Devise::RegistrationsController#create

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # root "home#index"
end
