Rails.application.routes.draw do
  devise_for :users
  root to: 'categories#home'
  resources :categories
  resources :items
end
