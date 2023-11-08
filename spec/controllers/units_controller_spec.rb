require 'rails_helper'

RSpec.describe UnitsController, type: :controller do
  describe 'GET #index' do
    it 'returns a JSON response with a list of units' do
      get :index
      expect(response).to have_http_status(:ok)
      expect(response.content_type).to include('application/json')
    end
  end

  describe 'GET #show' do
    it 'returns a JSON response with the unit details' do
      user = create(:user)
      unit = create(:unit, user:)
      get :show, params: { id: unit.id }
      expect(response).to have_http_status(:ok)
      expect(response.content_type).to include('application/json')
    end
  end
end
