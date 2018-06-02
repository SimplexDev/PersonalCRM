
User.destroy_all
Contact.destroy_all
Note.destroy_all

user_1 = User.create!(first_name: "User", last_name: "One", :email => 'user1@testing.com', :password => 'pword456', :password_confirmation => 'pword456')
user_2 = User.create!(:email => 'uuser2@testing.com', :password => 'pword456', :password_confirmation => 'pword456')
user_3 = User.create!(:email => 'user3@testing.com', :password => 'pword456', :password_confirmation => 'pword456')
admin = User.create!(:email => 'admin@testing.com', :password => 'pword456', :password_confirmation => 'pword456', admin: true)

contacts = [
  {first_name: "Sally", last_name: "Sanderson", company: "Buy N Large", industry: "Agricultural", phone_number: "937-333-1212", how_met: "Met Sally at a BBB luncheon in Dayton", user: admin },
  {first_name: "Tom", last_name: "Dubcheck", company: "Costco", industry: "Sales", phone_number: "937-333-1212", how_met: "Met Tom at a Mark and Sally's wedding", user: admin },
  {first_name: "Derek", last_name: "Francois", company: "Launch Lunch", industry: "IT", phone_number: "937-313- 4455", how_met: "Met Derek sailing the high seas of bermuda", user: user_2 },
  {first_name: "Matt", last_name: "Mallory", company: "Swift", industry: "Utilities", phone_number: "666-333-1212", how_met: "Matt is thoroughly interested in developing his Swift Contacts", user: admin },
  {first_name: "Duncan", last_name: "Framingham", company: "North Sails", industry: "Waste Management", phone_number: "666-333-1212", how_met: "", user: admin },
  {first_name: "Professor", last_name: "Farnsworth", company: "South Sails", industry: "Information Technology", phone_number: "666-333-1212", how_met: "", user: admin },
  {first_name: "Yule", last_name: "Tide", company: "Springfield Power", industry: "HVAC", phone_number: "666-333-1212", how_met: "", user: admin },
  {first_name: "Lando", last_name: "Calrissian", company: "Black Hat Electric", industry: "Pharmeceutical", phone_number: "666-333-1212", how_met: "", user: admin },
  {first_name: "Jeremy", last_name: "Silvert-Noftle", company: "Midwest", industry: "Fashion", phone_number: "666-333-1212", how_met: "", user: admin },
  {first_name: "Susan", last_name: "Bradtmiller", company: "South Sails", industry: "Fashion", phone_number: "666-333-1212", how_met: "", user: admin },
  {first_name: "Samantha", last_name: "Vanaursdal", company: "South-By-Southwest Sails", industry: "Sailing", phone_number: "666-333-1212", how_met: "", user: admin },
]

contacts.each do |item|
  contact = Contact.create!(item)
end

contact_1 = Contact.first
contact_2 = Contact.last

notes = [
  { comment: "Fan of karaoke", user: admin, contact: contact_1},
  { comment: "Tom and Donna live in Breckenridge, have two dogs Charlie and Max", user: admin, contact: contact_2},
]

notes.each do |item|
  notes = Note.create!(item)
end
