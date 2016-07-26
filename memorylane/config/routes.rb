Rails.application.routes.draw do

  get '/', to: 'memories#index'
  get '/memories', to: 'memories#index'

  get '/trips', to: 'trips#index'
  get '/trips/new', to: 'trips#new'
  get '/trips/edit/:id/edit', to: 'trips#edit'
  post '/trips', to: 'trips#create'
  get '/trips/show/:id', to: 'trips#show'
  patch '/trips/update/:id', to: 'trips#update'
  delete '/trips/:id', to: 'trips#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
