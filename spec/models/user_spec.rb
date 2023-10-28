require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    it 'is not valid without a name' do
      user = User.new(name: nil)
      expect(user).not_to be_valid
      expect(user.errors[:name]).to include("can't be blank")
    end

    it 'is valid with valid attributes' do
      user = User.new(name: 'Prosper Kessie')
      expect(user).to be_valid
    end

    it { should validate_length_of(:name).is_at_most(255) }
  end

  describe 'Associations' do
    it { should have_many(:units).dependent(:destroy).with_foreign_key(:user_id) }
    it { should have_many(:reservations).dependent(:destroy).with_foreign_key(:user_id) }
  end
end
