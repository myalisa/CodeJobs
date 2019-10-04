Rails.application.routes.draw do
  namespace :api do
    get '/jobs' => 'jobs#index'
    post '/jobs' => 'jobs#create'
    get '/jobs' => 'jobs#show' 
    patch'/jobs' => 'jobs#update'
    delete'/jobs' => 'jobs#destroy'
    
    post '/users' => 'users#create'
    
    post '/sessions' => 'sessions#create'
    

  end
end
  
