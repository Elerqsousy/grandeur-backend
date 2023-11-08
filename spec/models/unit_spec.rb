require 'rails_helper'

RSpec.describe Unit, type: :model do
  context 'associations' do
    it { should belong_to(:user) }
    it { should have_many(:reservations).dependent(:destroy).with_foreign_key(:unit_id) }
  end

  context 'validations' do
    it 'is not valid without a name' do
      unit = Unit.new(description: 'This is description 1', price: 100, unit_type: 'Duplex',
                      location: 'Cairo')
      expect(unit).not_to be_valid
      expect(unit.errors[:name]).to include("can't be blank")
    end

    it 'is valid with valid attributes' do
      user = User.create(name: 'Mahmoud Rizk')
      unit = Unit.new(name: 'Town Houses', description: 'This is description 2', price: 100,
                      unit_type: 'Duplex', location: 'Accra', user:)
      expect(unit).to be_valid
    end

    it 'is not valid with a price less than or equal to 0' do
      user = User.create(name: 'Prosper Kessie')
      unit = Unit.new(
        name: 'Town Houses',
        description: 'This is description 3',
        price: 0,
        unit_type: 'Duplex',
        location: 'Accra',
        user:
      )
      expect(unit).not_to be_valid
      expect(unit.errors[:price]).to include('must be greater than 0')
    end
  end
end
