class Unit < ApplicationRecord
  #Associations
  belongs_to :user

  #Attributes
  attribute name: :text
  attribute description: :text
  attribute image: :text, array: true, default: []
  attribute price: :integer
  attribute type: :text
  attribute location: :text

  #Validations
  validate :name, presence: true, length: { maximum: 255 }
  validate :description, presence: true, length: { maximum: 255 }
  validate :image
  validate :price, presence: true, numiricality: { greater_than: 0 }
  validate :type, presence: true, length: { maximum: 255 }
  validate :location, presence: true, length: { maximum: 255 }
end
