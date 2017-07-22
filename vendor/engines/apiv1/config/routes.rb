Apiv1::Engine.routes.draw do
  post 'login', to: 'users#login', as: :login
  get 'location_open/:id', to: 'locations#open', as: :location_open
end
