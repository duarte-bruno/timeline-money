Rails.application.routes.draw do
  resources :users
  resources :entries
  resources :entry_types
  resources :accounts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
