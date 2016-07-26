Rails.application.routes.draw do

  get '/', to: 'memories#index'
  get '/memories', to: 'memories#index'

  get '/trips', to: 'trips#index'
  get '/trips/new', to: 'trips#new'
  post '/trips', to: 'trips#create'
  get '/trips/:id', to: 'trips#show'
  get '/trips/:id/edit', to: 'trips#edit'
  patch '/trips/:id', to: 'trips#update'
  delete '/trips/:id', to: 'trips#delete'

  get '/concerts', to: 'concerts#index'
  get '/concerts/new', to: 'concerts#new'
  post '/concerts', to: 'concerts#create'
  get '/concerts/:id', to: 'concerts#show'
  get '/concerts/:id/edit', to: 'concerts#edit'
  patch '/concerts/:id', to: 'concerts#update'
  delete '/concerts/:id', to: 'concerts#delete'

  get '/achievements', to: 'achievements#index'
  get '/achievements/new', to: 'achievements#new'
  post '/achievements', to: 'achievements#create'
  get '/achievements/:id', to: 'achievements#show'
  get '/achievements/:id/edit', to: 'achievements#edit'
  patch '/achievements/:id', to: 'achievements#update'
  delete '/achievements/:id', to: 'achievements#delete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
