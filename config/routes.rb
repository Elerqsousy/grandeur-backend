Rails.application.routes.draw do
  resources :users, only: %i[ new create ]
  resources :units, only: %i[ index show new create destroy ]
  resources :reservations, only: %i[ index show new create destroy ]

  root "units#index"
end
