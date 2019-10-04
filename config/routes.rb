Rails.application.routes.draw do
  namespace :api do
    get '/jobs' => 'jobs#index'
    post '/users' => 'users#create'
    post '/sessions' => 'sessions#create'
    post '/jobs' => 'jobs#create'

  end
end
  
