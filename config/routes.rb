Rails.application.routes.draw do
  resources :users
  resources :entries
  resources :entry_types, only: [:index, :show]
  resources :accounts

  post '/auth/login', to: 'authentication#login'

  get '/statement', to: 'statement#index'
end
