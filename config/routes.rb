Rails.application.routes.draw do
  resources :comments
  devise_for :users
  root to: 'categories#home'
  resources :categories
  resources :items
end
