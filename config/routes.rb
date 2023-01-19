Rails.application.routes.draw do
  resources :articles do
    collection do
      get 'list'
    end
  end

  # resources :queries, only: [:create, :index]
  get 'queries', to: 'queries#index'
  post 'queries', to: 'queries#create', format: :json

  devise_for :users
  root 'home#index'
end
