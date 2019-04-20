Rails.application.routes.draw do
  resources :vulnerabilities
  resources :outputs, only: [:show]
  resources :inputs, only: [:show]
  resources :requests, only: [:show]
  resources :data, only: [:show, :create, :new]
  resources :categories, only: [:show]
  root :to => 'vulnerabilities#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
