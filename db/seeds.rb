# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Contact.destroy_all
Note.destroy_all

user_1 = User.create!(first_name: "Evan", last_name: "Hagberg", :email => '1aol@aol.com', :password => 'topsecret', :password_confirmation => 'topsecret')
user_2 = User.create!(:email => 'aol1@aol.com', :password => 'topsecret', :password_confirmation => 'topsecret')
user_3 = User.create!(:email => 'aol2@aol.com', :password => 'topsecret', :password_confirmation => 'topsecret')
admin = User.create!(:email => 'aol3@aol.com', :password => 'topsecret', :password_confirmation => 'topsecret', admin: true)

contacts = [
  {first_name: "Sally", last_name: "Samcake", company: "Buy N Large", industry: "Agricultural", phone_number: "937-333-1212", how_met: "Met Sally at a BBB luncheon in Dayton", user: user_1 },
  {first_name: "Tom", last_name: "Dubcheck", company: "Costco", industry: "Sales", phone_number: "937-333-1212", how_met: "Met Tom at a Mark and Sally's wedding", user: user_1 },
  {first_name: "Derek", last_name: "Dubois", company: "Launch Lunch", industry: "IT", phone_number: "937-313- 4455", how_met: "Met Derek sailing the high seas of bermuda", user: user_2 },
  {first_name: "Jeffrey", last_name: "Unicorn", company: "Apple", industry: "Waste Management", phone_number: "666-333-1212", how_met: "Jeffrey and I met via Nick Alberts at a bonfire", user: user_3 },
]

contacts.each do |item|
  contact = Contact.create!(item)
end

contact_1 = Contact.first
contact_2 = Contact.last

notes = [
  { comment: "I really enjoyed my meal with Sally, she had the duck confit but didn't like the sushi nibblins.  LOVES cosmopolitans and karaoke", user: user_1, contact: contact_1},
  { comment: "Tom and Donna live in alaska, have two dogs Charlie and Max, love the avengers but didn't particularly care for thanos' skin color", user: user_2, contact: contact_2}
]

notes.each do |item|
  notes = Note.create!(item)
end
