class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :unit

  validates :user, presence: true
  validates :unit, presence: true
  validates :date, presence: true
end
