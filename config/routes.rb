Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  resources :units, only: %i[ index show new create destroy ]
  resources :reservations, only: %i[ index show new create destroy ]
  resources :users, only: [:index, :show, :create, :login] do
    collection do
      post 'login', to: 'users#login'
    end
  end
  root "units#index"
end
