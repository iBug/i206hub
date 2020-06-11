Rails.application.routes.draw do
  devise_for :users
  root to: 'categories#home'

  resources :categories
  resources :items
  resources :comments

  scope :categories do
  end
end
