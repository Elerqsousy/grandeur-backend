class User < ApplicationRecord
  # Associations
  has_many :units, dependent: :destroy, foreign_key: :user_id

  # Attributes
  attribute :name, :text

  # Validations
  validate :name, presence: true, length: { maximum: 255 }

  def find_create_user(user_name)
    new_user = User.find_or_create_by!(name: user_name)
    session[:current_user] = new_user
    new_user
  end
end
