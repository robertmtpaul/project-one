Rails.application.routes.draw do
  get 'cities/new'
  get 'cities/create'
  get 'cities/index'
  get 'cities/show'
  get 'cities/edit'
  get 'cities/update'
  get 'cities/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root to: 'pages#welcome'
  get '/home' => 'pages#home'
  
  # Session routes;
  get '/login' => 'session#new'
  # login form
  # form submits to here, does authentication, 
  post '/login' => 'session#create'

  delete '/login' => 'session#destroy'
  #logout
  
  resources :users
  
  resources :cities

  resources :favourites

end
