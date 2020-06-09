Rails.application.routes.draw do
  root to: 'categories#home'
  resources :categories, param: :slug
  resources :items
end
