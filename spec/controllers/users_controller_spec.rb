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
end
