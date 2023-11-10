class User < ApplicationRecord
  include Rails.application.routes.url_helpers

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
      past: sort_reservations(past_reservations),
      active: sort_reservations(future_reservations)
    }
  end

  private

  def unit_image(unit)
    return unit.images.map { |image| url_for(image) } if unit.images.attached?

    []
  end

  def sort_reservations(reservations)
    reservations&.map do |reservation|
      unit_details = reservation.unit.attributes.merge(image_urls: unit_image(reservation.unit))
      reservation.attributes.merge(unit_details:,
                                   unit_owner: reservation.unit.user.name)
    end || []
  end
end
