Rails.application.routes.draw do

  root to: 'docs#index'

  resources :docs

end
