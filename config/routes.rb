Rails.application.routes.draw do
  devise_for :models
  devise_for :users
  root 'posts#index'
  resources :users
  resources :comments
  resources :posts do
    resources :comments
  end
end
