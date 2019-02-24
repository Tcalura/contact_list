# frozen_string_literal: true

Rails.application.routes.draw do
  
  root to: 'static_pages#index'

  resources :contacts
  resources :users, only: %i[new create show]

  get 'sobre', to: 'static_pages#sobre'
  get 'contato', to: 'static_pages#contato'
  get 'entrar', to: 'sessions#new'
  post 'entrar', to: 'sessions#create'
  delete 'sair', to: 'sessions#destroy'

end
