# frozen_string_literal: true

Rails.application.routes.draw do
  resources :contacts
  resources :users, only: %i[new create]

  root to: 'static_pages#index'

  get 'sobre', to: 'static_pages#sobre'
  get 'contato', to: 'static_pages#contato'
end
