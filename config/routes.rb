Rails.application.routes.draw do
  resources :comments
  resources :articles
  resources :categories
  devise_for :users

  root to: 'articles#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
