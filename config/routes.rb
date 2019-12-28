Rails.application.routes.draw do
  resources :users 
  post 'authenticate', to: 'authentication#authenticate'
  resources :job_posts do
    get '/findAllUserInPost',to: 'job_posts#findAllUserInPost'
    get '/details',to: 'job_posts#details'
  end
  get '/list_job_details', to:'job_posts#list_details'
  resources :seeker_profiles

  resources :job_types
  resources :categories
  resources :job_locations
  resources :job_post_activities
  resources :companies
end
