# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


admin = User.create(
  name: "Josh Thompson",
  email: "thompsonjoshd@gmail.com",
  password_digest: "Password!",
  zipcode: "80403",
  role: 1
)

5.times do
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
  )
end

5.times do
  Announcement.create(
    title: Faker::Marketing.buzzwords,
    body: Faker::Quote.famous_last_words
  )
end

point_values = [10, 35, 55, 80, 200]
10.times do |n|
  Activity.create(
    title:  "#{n.to_s} do cool stuff",
    user: User.all.sample,
    points: point_values.sample
  )
end

Activity.all.each do |activity|
  activity.approve
end
# create some Leaderboards
5.times do |n|
  lb = Leaderboard.create(
    created_by: admin,
    title: "#{n}: something something",
    description: "leaderboard #{n} : put pressure on $LOCAL_ELECTION by fall"
  )
  lb.activities << Activity.all.sample(3)
  puts lb.to_json
end

# complete activities
Leaderboard.all.each do |lb|
  lb.activities << Activity.all.sample(3)
  
  lb.participants << User.all.sample(3)
end

# complete some activities


