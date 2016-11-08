Rails.application.routes.draw do
  devise_for :users, :path => '', :path_names => {:sign_up => 'register', :sign_in => 'login', :sign_out => 'logout'}
  root 'posts#index'
  resources :users
  resources :comments
  resources :posts do
    resources :comments
  end
end
