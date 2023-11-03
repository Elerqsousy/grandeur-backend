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
Unit.create(name: "Appartment1", price: 500, unit_type: "Apartment", location: "bla bla bla", user_id: 1, description: 'pesodu fsdfsdfsfdgsfdgfd dfs sfdgdfgsd dfs adfsgdfsgdf sdfgsdfcv xv bxcvbedgs dfgsdf sdfgsd sdf fdg fdgdfgdf dfgdffd')
Unit.create(name: "Appartment2", price: 100, unit_type: "House", location: "bla bla bla", user_id: 1, description: 'pesodu fsdfsdfsfdgsfdgfd dfs sfdgdfgsd dfs adfsgdfsgdf sdfgsdfcv xv bxcvbedgs dfgsdf sdfgsd sdf fdg fdgdfgdf dfgdffd')
Unit.create(name: "Appartment3", price: 600, unit_type: "Apartment", location: "bla bla bla", user_id: 1, description: 'pesodu fsdfsdfsfdgsfdgfd dfs sfdgdfgsd dfs adfsgdfsgdf sdfgsdfcv xv bxcvbedgs dfgsdf sdfgsd sdf fdg fdgdfgdf dfgdffd')
Unit.create(name: "Appartment4", price: 700, unit_type: "House", location: "bla bla bla", user_id: 1, description: 'pesodu fsdfsdfsfdgsfdgfd dfs sfdgdfgsd dfs adfsgdfsgdf sdfgsdfcv xv bxcvbedgs dfgsdf sdfgsd sdf fdg fdgdfgdf dfgdffd')
Unit.create(name: "Appartment5", price: 800, unit_type: "Apartment", location: "bla bla bla", user_id: 1, description: 'pesodu fsdfsdfsfdgsfdgfd dfs sfdgdfgsd dfs adfsgdfsgdf sdfgsdfcv xv bxcvbedgs dfgsdf sdfgsd sdf fdg fdgdfgdf dfgdffd')
Unit.create(name: "Appartment6", price: 900, unit_type: "House", location: "bla bla bla", user_id: 1, description: 'pesodu fsdfsdfsfdgsfdgfd dfs sfdgdfgsd dfs adfsgdfsgdf sdfgsdfcv xv bxcvbedgs dfgsdf sdfgsd sdf fdg fdgdfgdf dfgdffd')
Unit.create(name: "Appartment7", price: 1100, unit_type: "Apartment", location: "bla bla bla", user_id: 1, description: 'pesodu fsdfsdfsfdgsfdgfd dfs sfdgdfgsd dfs adfsgdfsgdf sdfgsdfcv xv bxcvbedgs dfgsdf sdfgsd sdf fdg fdgdfgdf dfgdffd')
Unit.create(name: "Appartment8", price: 2200, unit_type: "House", location: "bla bla bla", user_id: 1, description: 'pesodu fsdfsdfsfdgsfdgfd dfs sfdgdfgsd dfs adfsgdfsgdf sdfgsdfcv xv bxcvbedgs dfgsdf sdfgsd sdf fdg fdgdfgdf dfgdffd')
Unit.create(name: "Appartment9", price: 5200, unit_type: "Apartment", location: "bla bla bla", user_id: 1, description: 'pesodu fsdfsdfsfdgsfdgfd dfs sfdgdfgsd dfs adfsgdfsgdf sdfgsdfcv xv bxcvbedgs dfgsdf sdfgsd sdf fdg fdgdfgdf dfgdffd')
Unit.create(name: "Appartment10", price: 5500, unit_type: "House", location: "bla bla bla", user_id: 1, description: 'pesodu fsdfsdfsfdgsfdgfd dfs sfdgdfgsd dfs adfsgdfsgdf sdfgsdfcv xv bxcvbedgs dfgsdf sdfgsd sdf fdg fdgdfgdf dfgdffd')
Unit.create(name: "Appartment11", price: 400, unit_type: "Apartment", location: "bla bla bla", user_id: 1, description: 'pesodu fsdfsdfsfdgsfdgfd dfs sfdgdfgsd dfs adfsgdfsgdf sdfgsdfcv xv bxcvbedgs dfgsdf sdfgsd sdf fdg fdgdfgdf dfgdffd')
Unit.create(name: "Appartment12", price: 900, unit_type: "House", location: "bla bla bla", user_id: 1, description: 'pesodu fsdfsdfsfdgsfdgfd dfs sfdgdfgsd dfs adfsgdfsgdf sdfgsdfcv xv bxcvbedgs dfgsdf sdfgsd sdf fdg fdgdfgdf dfgdffd')
Unit.create(name: "Appartment13", price: 1400, unit_type: "Apartment", location: "bla bla bla", user_id: 1, description: 'pesodu fsdfsdfsfdgsfdgfd dfs sfdgdfgsd dfs adfsgdfsgdf sdfgsdfcv xv bxcvbedgs dfgsdf sdfgsd sdf fdg fdgdfgdf dfgdffd')
Unit.create(name: "Appartment14", price: 400, unit_type: "House", location: "bla bla bla", user_id: 1, description: 'pesodu fsdfsdfsfdgsfdgfd dfs sfdgdfgsd dfs adfsgdfsgdf sdfgsdfcv xv bxcvbedgs dfgsdf sdfgsd sdf fdg fdgdfgdf dfgdffd')
Unit.create(name: "Appartment15", price: 700, unit_type: "Apartment", location: "bla bla bla", user_id: 1, description: 'pesodu fsdfsdfsfdgsfdgfd dfs sfdgdfgsd dfs adfsgdfsgdf sdfgsdfcv xv bxcvbedgs dfgsdf sdfgsd sdf fdg fdgdfgdf dfgdffd')
Unit.create(name: "Appartment16", price: 800, unit_type: "House", location: "bla bla bla", user_id: 1, description: 'pesodu fsdfsdfsfdgsfdgfd dfs sfdgdfgsd dfs adfsgdfsgdf sdfgsdfcv xv bxcvbedgs dfgsdf sdfgsd sdf fdg fdgdfgdf dfgdffd')

Reservation.create(unit_id:1, user_id:1, date: '2023-9-02 10:15:35')
Reservation.create(unit_id:2, user_id:1, date: '2023-8-04 10:15:35')
Reservation.create(unit_id:1, user_id:1, date: '2023-12-02 10:15:35')
Reservation.create(unit_id:2, user_id:1, date: '2023-2-04 10:15:35')
Reservation.create(unit_id:1, user_id:1, date: '2023-12-02 10:15:35')
Reservation.create(unit_id:2, user_id:1, date: '2023-11-04 10:15:35')
Reservation.create(unit_id:1, user_id:1, date: '2023-12-02 10:15:35')
Reservation.create(unit_id:2, user_id:1, date: '2023-11-04 10:15:35')
Reservation.create(unit_id:1, user_id:1, date: '2023-12-02 10:15:35')
Reservation.create(unit_id:2, user_id:1, date: '2023-11-04 10:15:35')
Reservation.create(unit_id:1, user_id:1, date: '2023-12-02 10:15:35')
Reservation.create(unit_id:2, user_id:1, date: '2023-11-04 10:15:35')
Reservation.create(unit_id:1, user_id:1, date: '2023-12-02 10:15:35')
Reservation.create(unit_id:2, user_id:1, date: '2023-11-04 10:15:35')
Reservation.create(unit_id:1, user_id:1, date: '2023-12-02 10:15:35')
Reservation.create(unit_id:2, user_id:1, date: '2023-11-04 10:15:35')
