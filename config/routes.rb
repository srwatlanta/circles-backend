Rails.application.routes.draw do
  resources :comments
  resources :circle_invites, only: [:create, :delete]
  resources :friendships, only: [:create, :delete]
  resources :invites, only: [:create, :update]
  resources :circles, only: [:create, :delete, :update, :show]
  resources :events, only: [:index, :create, :update, :delete, :show]
  resources :users, only: [:create, :update, :delete, :index]
  get '/profile', to: 'users#profile'
  post '/login', to: 'auth#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
