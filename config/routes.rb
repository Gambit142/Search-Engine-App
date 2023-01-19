Rails.application.routes.draw do
  resources :articles do
    collection do
      get 'list'
    end
  end

  devise_for :users
  root 'home#index'
end
