Rails.application.routes.draw do
  root 'posts#index'
  resources :users
  resources :comments
  resources :posts do
    resources :comments
  end
end
