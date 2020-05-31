Rails.application.routes.draw do
  # Pages controller Route
  root 'pages#index'

  # Sessions controller routes
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'

  # User controller routes
  get '/signup', to: 'users#new'
  post '/users', to: 'users#create'

  # Categories controller routes
  resources :categories, only: [:show]

  # Reviews controller routes
  resources :reviews, only: %i[new create]

  # Votes controller routes
  post '/reviews/:id/votes', to: 'votes#create'
  delete '/reviews/:id/votes', to: 'votes#destroy'
end
