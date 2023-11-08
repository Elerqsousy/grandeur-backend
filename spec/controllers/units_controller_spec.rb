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

  describe 'POST #create' do
    context 'with valid attributes' do
      it 'creates a new unit' do
        user = create(:user)
        unit_params = attributes_for(:unit, user_id: user.id)
        expect do
          post :create, params: { unit: unit_params }
        end.to change(Unit, :count).by(1)

        expect(response).to have_http_status(:created)
        expect(response.content_type).to include('application/json')
      end
    end

    context 'with invalid attributes' do
      it 'returns unprocessable entity status' do
        post :create, params: { unit: { name: '' } }
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to include('application/json')
      end
    end
  end
end
