Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root to: 'pages#welcome'
  get '/home' => 'pages#home'
  # Session routes;
  get '/login' => 'session#new'

  
  get 'users/new'
  get 'users/create'
  get 'users/index'
  get 'users/show'
  get 'users/edit'
  get 'users/update'
  get 'users/destroy'


  resources :favourites




end
