require 'sidekiq/web'

Rails.application.routes.draw do
  resources :meetings do
    # Nesting comments in meetings
    resources :comments
  end
  devise_for :users
  root to: 'home#index'
end
