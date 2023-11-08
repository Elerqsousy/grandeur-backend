Rails.application.routes.draw do
  resources :units, only: %i[ index show new create destroy ]
  resources :reservations, only: %i[ index show new create destroy ]
  resources :users, only: [:index, :show, :create, :update, :destroy, :login] do
    collection do
      post 'login', to: 'users#login'
    end
  end
  root "units#index"
end
