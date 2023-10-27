class User < ApplicationRecord
  # user name to save
  # if the user exist then save it to the local storage. if not we create new user and sav e to the local storage.

  # Attributes
  attribute :name, :text

  # Validations
  validate :name, presence: true, length: { maximum: 255 }
  # user.find_or_create_by(name:..user name)def
  def find_create_user(user_name)
    new_user = User.find_or_create_by!(name: user_name)
    session[:current_user] = new_user
    new_user
  end
end
