# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.create!(name: "Riz")
Unit.create(name: "Appartment1", price: 500, unit_type: "Apartment", location: "bla bla bla", user_id: 1, description: 'adfhad')
Unit.create(name: "Appartment2", price: 500, unit_type: "House", location: "bla bla bla", user_id: 1, description: 'adfhad')

Reservation.create(unit_id:1, user_id:1, date: '2023-12-02 10:15:35')
Reservation.create(unit_id:2, user_id:1, date: '2023-11-04 10:15:35')
