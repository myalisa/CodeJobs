Rails.application.routes.draw do
  namespace :api do
    get '/jobs' => 'jobs#index'
    post '/jobs' => 'jobs#create'
  end
end
  
