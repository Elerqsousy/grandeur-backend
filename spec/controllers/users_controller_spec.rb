require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe 'GET #index' do
    it 'returns a successful response' do
      get :index
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET #show' do
    let(:user) { User.create(name: 'Prosper Kessie') }

    it 'returns a successful response' do
      get :show, params: { id: user.id }
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'POST #login' do
    it 'returns a successful response when user is found' do
      user = User.create(name: 'Prosper Kessie')
      post :login, params: { name: user.name }
      expect(response).to have_http_status(:ok)
    end

    it 'returns a not found response when user is not found' do
      post :login, params: { name: 'Sazzad Hossain' }
      expect(response).to have_http_status(:not_found)
    end
  end

  describe 'POST #create' do
    it 'creates a new user and returns a successful response' do
      user_params = { name: 'Mahmoud Rizk' }
      post :create, params: { user: user_params }
      expect(response).to have_http_status(:created)
    end

    it 'returns unprocessable entity response when user creation fails' do
      user_params = { name: '' }
      post :create, params: { user: user_params }
      expect(response).to have_http_status(:unprocessable_entity)
    end
  end
end
