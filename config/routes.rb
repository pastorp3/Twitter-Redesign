# frozen_string_literal: true

Rails.application.routes.draw do
  resources :friendships
  resources :posts, only: %i[index create] do
    resources :comments, only: [:create]
    resources :likes, only: %i[create destroy]
  end

  devise_for :users, controllers: { registrations: 'registrations' }
  root 'posts#index'
  get '/friendship/:id', to: 'friendships#follow'
  delete '/friendship/:id', to: 'friendships#unfollow'
  get '/users/:id', to: 'users#show', as: :show_user

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
