Rails.application.routes.draw do

  root to: 'docs#index'

  get '/login' => 'sessions#new'
  get '/auth/github/callback' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  post '/docs/:id/like', to: 'likes#like', as: 'like'

  resources :docs

end
