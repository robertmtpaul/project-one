Rails.application.routes.draw do
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
  
  # Startups CRUD

  # CREATE 
  get '/startups/new' => 'startups#new'
  post '/startups' => 'startups#create'

  # READ   
  # 1. Index page - all startups
  get '/startups/index' => 'startups#index', as: 'all_startups'

# 2. Show page for   a single startup by ID.
# 'as: 'startup' tells rails to make the path helper method with the name 'startup_path'
  get '/startups/:id' => 'startups#show', as: 'startup'
  
  # EDIT  
  get '/startups/edit'



  get '/startups/update'

  # DESTROY

  resources :users
  
  resources :cities

  resources :favourites

end
