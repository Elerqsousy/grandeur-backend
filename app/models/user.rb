class User < ApplicationRecord
  # Associations
  has_many :units, dependent: :destroy, foreign_key: :user_id
  has_many :reservations, dependent: :destroy, foreign_key: :user_id

  # Attributes
  attribute :name, :text

  # Validations
  validates :name, presence: true, length: { maximum: 255 }

  def partitioned_reservations
    reservations = self.reservations&.includes(unit: [:user])&.order(date: :asc)
    current_date = Date.current
    past_reservations, future_reservations = reservations&.partition { |reservation| reservation.date < current_date }

    {
      past: sort_past_reservations(past_reservations),
      active: sort_future_reservations(future_reservations)
    }
  end

  private

  def sort_past_reservations(reservations)
    reservations&.map do |reservation|
      reservation.attributes.merge(unit_details: reservation.unit, unit_owner: reservation.unit.user.name)
    end || []
  end

  def sort_future_reservations(reservations)
    reservations&.map do |reservation|
      reservation.attributes.merge(unit_details: reservation.unit)
    end || []
  end
end
