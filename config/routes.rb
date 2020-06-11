Rails.application.routes.draw do
  devise_for :users
  root to: 'categories#home'

  resources :categories
  resources :items
  resources :comments

  scope :categories do
  end

  # Error pages
  %w[404 422 500 503].each do |code|
    get code, to: "meta#error", code: code
  end
end
