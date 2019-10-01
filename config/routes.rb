Rails.application.routes.draw do
  resources :comments, only: [:create, :destroy]
  resources :circle_invites, only: [:create, :destroy]
  resources :friendships, only: [:create, :destroy]
  resources :invites, only: [:create, :update, :destroy]
  resources :circles, only: [:create, :destroy, :update, :show]
  resources :events, only: [:index, :create, :update, :destroy, :show]
  resources :users, only: [:show, :create, :update, :destroy, :index]
  get '/profile', to: 'users#profile'
  post '/login', to: 'auth#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
