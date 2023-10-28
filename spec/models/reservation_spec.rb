require 'rails_helper'

RSpec.describe Reservation, type: :model do
  describe 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:unit) }
  end

  describe 'validations' do
    it 'is not valid without a user' do
      reservation = Reservation.new(unit: Unit.new, date: Date.today)
      expect(reservation).not_to be_valid
      expect(reservation.errors[:user]).to include("can't be blank")
    end

    it 'is not valid without a unit' do
      reservation = Reservation.new(user: User.new, date: Date.today)
      expect(reservation).not_to be_valid
      expect(reservation.errors[:unit]).to include("can't be blank")
    end

    it 'is not valid without a date' do
      reservation = Reservation.new(user: User.new, unit: Unit.new)
      expect(reservation).not_to be_valid
      expect(reservation.errors[:date]).to include("can't be blank")
    end

    it 'is valid with valid attributes' do
      user = User.create(name: 'Prosper Kessie')
      unit = Unit.create(name: 'Keelson court', description: '2,3 and 4 bedroom townhouses', price: 1000,
                         location: 'Accra')
      reservation = Reservation.new(user:, unit:, date: Date.today)
      expect(reservation).to be_valid
    end
  end
end
