class Unit < ApplicationRecord
  # Associations
  belongs_to :user
  has_many :reservations, dependent: :destroy, foreign_key: :unit_id

  has_many_attached :images

  # Attributes
  attribute :name, :text
  attribute :description, :text
  attribute :price, :integer
  attribute :unit_type, :text
  attribute :location, :text
  attribute :user_id, :integer

  # Validations
  validates :name, presence: true, length: { maximum: 255 }
  validates :description, presence: true, length: { maximum: 255 }
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :unit_type, presence: true, length: { maximum: 255 }
  validates :location, presence: true, length: { maximum: 255 }
end
