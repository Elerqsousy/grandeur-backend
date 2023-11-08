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
end
