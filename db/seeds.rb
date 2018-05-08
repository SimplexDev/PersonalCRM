
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
  {first_name: "Matt", last_name: "Macks", company: "Swift", industry: "Utilities", phone_number: "666-333-1212", how_met: "Matt is thoroughly interested in developing his Swift Contacts", user: user_1 },
  {first_name: "Dugan", last_name: "Boo", company: "North Sails", industry: "Goodreads", phone_number: "666-333-1212", how_met: "Dugan is a noted soccer player, father of none, and enjoys disc golf", user: user_1 },
]

contacts.each do |item|
  contact = Contact.create!(item)
end

contact_1 = Contact.first
contact_2 = Contact.last

notes = [
  { comment: "I really enjoyed my meal with Sally, she had the duck confit but didn't like the sushi nibblins.  LOVES cosmopolitans and karaoke", user: user_1, contact: contact_1},
  { comment: "Tom and Donna live in alaska, have two dogs Charlie and Max, love the avengers but didn't particularly care for thanos' attitude", user: user_2, contact: contact_2},
  { comment: "Jefferey was a good binicorn, unfortunately he didn't last long", user: user_1, contact: contact_2},
  { comment: "Samcake Sally; suddenly Susan", user: user_1, contact: contact_1}
]

notes.each do |item|
  notes = Note.create!(item)
end
