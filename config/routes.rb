Rails.application.routes.draw do

  root to: 'welcome#index'

  get '/items', to: 'items#index'
  get '/items/new', to: 'items#new'
  post '/items', to: 'items#create'
  get '/items/:id', to: 'items#show'


  get "/items/:id/edit", to: "items#edit", as: "item_edit"
  patch "/items/:id/edit", to: "items_edit#update"

  post "/sessions", to: "sessions#create"
  delete '/sessions', to: 'sessions#destroy'

  get "/users/:id", to: "users#show", as: 'user'

  get :send_barter_mail, to: 'barters#send_barter_mail', as: 'send_barter_mail'

  resources :items
  resources :users
  resources :users do
    resources :items
  end
end
