require 'rails_helper'

RSpec.describe UnitsController, type: :controller do
  describe 'GET #index' do
    it 'returns a JSON response with a list of units' do
      get :index
      expect(response).to have_http_status(:ok)
      expect(response.content_type).to include('application/json')
    end
  end
end
