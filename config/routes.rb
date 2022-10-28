require 'sidekiq/web'

Rails.application.routes.draw do
 
    authenticate :user, lambda { |u| u.admin? } do
      mount Sidekiq::Web => '/sidekiq'
    end


  resources :tweets, except: [:edit, :update] do
  resources :comments, only: [:create, :destroy]
    
  member do
    post :retweet
    end
  end


  devise_for :users
  resources :profiles 
  resources :likes, only: :create
  root to: 'tweets#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
  