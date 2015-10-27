Rails.application.routes.draw do

  root to: 'welcome#index'

  get '/items', to: 'items#index'
  get '/items/new', to: 'items#new'
  post '/items', to: 'items#create'
  get '/items/:id', to: 'items#show'

  post "/sessions", to: "sessions#create"
  delete '/sessions', to: 'sessions#destroy'

  resources :users
  resources :users do
    resources :items
  end
end
