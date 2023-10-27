class Unit < ApplicationRecord
  # Associations
  belongs_to :user
  has_many :reservations, dependent: :destroy, foreign_key: :unit_id

  # Attributes
  attribute :name, :text
  attribute :description, :text
  attribute :image, :text, array: true, default: []
  attribute :price, :integer
  attribute :type, :text
  attribute :location, :text

  # Validations
  validates :name, presence: true, length: { maximum: 255 }
  validates :description, presence: true, length: { maximum: 255 }
  validates :image, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :type, presence: true, length: { maximum: 255 }
  validates :location, presence: true, length: { maximum: 255 }
end
