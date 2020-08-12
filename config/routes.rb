Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root to: 'pages#welcome'
  get '/home' => 'cities#index'
  
  # Session routes;
  get '/login' => 'session#new'
  # login form
  # form submits to here, does authentication, 
  post '/login' => 'session#create'

  delete '/login' => 'session#destroy'
  #logout
  
  resources :users
  resources :startups
  resources :cities
  resources :favourites
  resources :coworking_spaces
end
