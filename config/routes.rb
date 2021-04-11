Rails.application.routes.draw do
  get '/' => 'sessions#welcome'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/signup' => 'owners#new'
  delete '/logout' => 'sessions#destroy'

  

  resources :owners
  resources :restaurants do
     resources :reviews
  end 
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
