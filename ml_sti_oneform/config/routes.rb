Rails.application.routes.draw do
  resources :memories

  resources :trips, controller: 'memories', type: 'Trip'
  resources :concerts, controller: 'memories', type: 'Concert'
  resources :achievements, controller: 'memories', type: 'Achievement'
  # get 'trips/new', to: 'memories#newTrip'
  root 'memories#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
