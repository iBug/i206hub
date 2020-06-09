Rails.application.routes.draw do
  resources :categories, param: :slug
  resources :items
end
