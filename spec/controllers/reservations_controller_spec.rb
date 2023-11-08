require 'rails_helper'

RSpec.describe ReservationsController, type: :controller do
  let(:user) { create(:user) }

  describe 'GET #index' do
    it 'returns a JSON response with a list of reservations for the specified user' do
      user = create(:user)

      create_list(:reservation, 5, user:)
      get :index, params: { user_id: user.id }, format: :json

      expect(response).to have_http_status(:ok)
      response_data = JSON.parse(response.body)
      expect(response_data['reservations'].length).to eq(2)
    end
  end

  describe 'GET #show' do
    it 'returns a JSON response with the reservation details' do
      reservation = create(:reservation, user:)
      get :show, params: { id: reservation.id }
      expect(response).to have_http_status(:ok)
      expect(response.content_type).to include('application/json')
      expect(assigns(:reservation)).to eq(reservation)
    end
  end

  describe 'POST #create' do
    context 'with valid attributes' do
      let(:user) { User.create(name: 'Prosper Kessie') }
      it 'creates a new reservation' do
        unit = create(:unit, user:)
        valid_params = { user_id: user.id, unit_id: unit.id, date: Date.tomorrow }

        expect do
          post :create, params: { reservation: valid_params }
        end.to change(Reservation, :count).by(1)

        expect(response).to have_http_status(:created)
        expect(response.content_type).to include('application/json')
        expect(assigns(:reservation).user_id).to eq(user.id)
      end
    end

    context 'with invalid attributes' do
      it 'returns unprocessable entity status' do
        invalid_params = { user_id: user.id, unit_id: nil, date: nil }
        post :create, params: { reservation: invalid_params }
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to include('application/json')
      end
    end
  end
end
