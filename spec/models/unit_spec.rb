require 'rails_helper'

RSpec.describe Unit, type: :model do
  context 'associations' do
    it { should belong_to(:user) }
    it { should have_many(:reservations).dependent(:destroy).with_foreign_key(:unit_id) }
  end

  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_length_of(:name).is_at_most(255) }
    it { should validate_presence_of(:description) }
    it { should validate_length_of(:description).is_at_most(255) }
    it { should validate_presence_of(:image) }
    it { should validate_presence_of(:price) }
    it { should validate_numericality_of(:price).is_greater_than(0) }
    it { should validate_presence_of(:type) }
    it { should validate_length_of(:type).is_at_most(255) }
    it { should validate_presence_of(:location) }
    it { should validate_length_of(:location).is_at_most(255) }
  end
end
