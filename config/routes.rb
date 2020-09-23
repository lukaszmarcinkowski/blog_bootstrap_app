# frozen_string_literal: true

Rails.application.routes.draw do
  resources :comments
  resources :articles
  resources :categories
  devise_for :users
  # resource :welcome, only: index
  root to: 'welcome#home'
end
