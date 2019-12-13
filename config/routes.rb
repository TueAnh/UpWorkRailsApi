Rails.application.routes.draw do
  resources :users
  post 'authenticate', to: 'authentication#authenticate'
  resources :job_posts do
    get '/findAllUserInPost',to: 'job_posts#findAllUserInPost'
  end
  resources :job_types
  resources :categories
  resources :job_locations
  resources :job_post_activities
end
