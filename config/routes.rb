Rails.application.routes.draw do
  resources :vulnerabilities
  resources :outputs
  resources :inputs
  resources :requests
  resources :data
  root :to => 'dashboard#index'
  resources :categories
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
