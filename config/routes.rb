Rails.application.routes.draw do
  namespace :api do
    get '/jobs' => 'jobs#index'
    post '/jobs' => 'jobs#create'
    get '/jobs/:id' => 'jobs#show' 
    patch'/jobs/:id' => 'jobs#update'
    delete'/jobs/:id' => 'jobs#destroy'

    get '/jobsearches' => 'job_searches#index'
    
    post '/users' => 'users#create'
    
    post '/sessions' => 'sessions#create'
    
    
  end
end
  
