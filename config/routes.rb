Rails.application.routes.draw do

  root to: 'index#index'
  get '/create', to: 'pages#create'

  get '/show', to: 'pages#show'

  resources :index


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
