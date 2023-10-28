require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    it { should validate_presence_of(:name) }
    it { should validate_length_of(:name).is_at_most(255) }
  end

  describe 'Associations' do
    it { should have_many(:units).dependent(:destroy).with_foreign_key(:user_id) }
    it { should have_many(:reservations).dependent(:destroy).with_foreign_key(:user_id) }
  end
end
