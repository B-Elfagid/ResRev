Rails.application.routes.draw do
  get '/' => 'sessions#welcome'
  get 'auth/:provider/callback' to: 'sessions#omniauth'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/signup' => 'users#new'
  delete '/logout' => 'sessions#destroy'
 
  get '/search' => 'restaurants#search'
  

  resources :reviews
  resources :restaurants do
     resources :reviews
  end 
  resources :users
     resources :restaurants, only: [:index] do
     end 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
