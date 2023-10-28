class Unit < ApplicationRecord
  # Associations
  belongs_to :user
  has_many :reservations, dependent: :destroy, foreign_key: :unit_id

  # Attributes
  attribute :name, :text
  attribute :description, :text
  attribute :image, :text, array: true, default: []
  attribute :price, :integer
  attribute :unit_type, :text
  attribute :location, :text
  attribute :user_id, :integer

  # Validations (use 'validates' instead of 'validate')
  validates :name, presence: true, length: { maximum: 255 }
  validates :user_id, presence: true
  validates :description, presence: true, length: { maximum: 500 }
  validates :image, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :unit_type, presence: true, length: { maximum: 55 }
  validates :location, presence: true, length: { maximum: 255 }
end
