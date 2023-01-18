Rails.application.routes.draw do
  resources :queries
  resources :articles
  devise_for :users
  root 'home#index'
end
