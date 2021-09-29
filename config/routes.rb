Rails.application.routes.draw do
  # Root
  root to: 'categories#index'
  # Devise
  devise_for :providers
  devise_for :customers

  # Resources
  resources :categories
  resources :customers
  resources :providers
  resources :social_networks
  resources :services
  resources :appointments

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
