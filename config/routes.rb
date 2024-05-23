Rails.application.routes.draw do
  root 'cars#index'

  resources :cars, only: [:index, :show]
  resources :reservations, only: [:new, :create]  
end
