Rails.application.routes.draw do
  root "homes#index"
  resources :users, except: [:show, :destroy] do
    member do
      delete :destroy, to: "users#destroy", as: :admin_destroy  
    end
  end
  devise_for :users
  resources :locations

  mount Apiv1::Engine, at: "/api/v1/"
end
