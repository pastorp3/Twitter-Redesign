Rails.application.routes.draw do
  resources :friendships
	resources :posts, only: [:index, :create] do
		    resources :comments, only: [:create]
    		resources :likes, only: [:create, :destroy]
	end
 
  devise_for :users, :controllers => { registrations: 'registrations' }
  root "posts#index"
  get '/friendship/:id', to: 'friendships#Follow'
  delete '/friendship/:id', to: 'friendships#Unfollow'
  post '/users/:id', to: 'users#show', as: :show_user


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
