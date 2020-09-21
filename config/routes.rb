Rails.application.routes.draw do
  resources :friendships
  resources :likes
  resources :comments
	resources :posts, only: [:index, :new, :destroy ]
 
  devise_for :users, :controllers => { registrations: 'registrations' }
  root "posts#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
