# frozen_string_literal: true

Rails.application.routes.draw do
  scope '/(:locale)', locale: /#{I18n.available_locales.join('|')}/ do
    resources :comments
    resources :articles
    resources :categories
    devise_for :users
    root 'welcome#home'
  end
end
