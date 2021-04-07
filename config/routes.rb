Rails.application.routes.draw do
  get '/' => 'sessions#welcome'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/signup' => 'users#new'

  resources :owners
  resources :restaurants
  resources :reviews
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
