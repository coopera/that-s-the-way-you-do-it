Rails.application.routes.draw do

  root to: 'docs#index'

  get '/login' => 'sessions#new'
  get '/auth/github/callback' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  resources :docs

end
