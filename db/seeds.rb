

require 'faker'

50.times do
 # #1
   Item.create!(
 # #2
     name:  Faker::Lorem.sentence
     
   )
 end
 items = Item.all


20.times do
 # #1
   User.create!(
 # #2
     email: Faker::Internet.email,
     password: Faker::Internet.password
   )
 end
 users = User.all
