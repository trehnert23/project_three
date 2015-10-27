Rails.application.routes.draw do

  root to: 'welcome#index'

  get '/items', to: 'items#index'
  get '/items/new', to: 'items#new'
  post '/items', to: 'items#create'
  get '/items/:id', to: 'items#show'

  post "/sessions", to: "sessions#create"
  delete '/sessions', to: 'sessions#destroy'

  get "/users/:id", to: "users#show", as: 'user'

  resources :items
  resources :users
  resources :users do
    resources :items
  end
end
