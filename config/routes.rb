Rails.application.routes.draw do
  get '/' => 'sessions#welcome'
  get '/login' => 'sessions#login/new'
  post '/login' => 'sessions#login/create'
  get '/signup' => 'sessions#users/new'

  resources :owners
  resources :restaurants
  resources :reviews
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
