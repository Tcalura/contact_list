# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'static_pages#index'
  get 'sobre', to: 'static_pages#sobre'
  get 'contato', to: 'static_pages#contato'

  get 'cadastro', to: 'users#new'
  # get 'entrar',   to: 'sessions#new'
  # post 'entrar',  to: 'sessions#create'
  # delete 'sair',  to: 'sessions#destroy'
  # resources :contacts
  # resources :users, only: %i[new create show]
  resources :sessions, only: %i[new create destroy]

  resources :users, except: %i[index destroy] do
    resources :contacts, except: :show
  end
end
  # %i[show new create edit update]