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
    name: Faker::Name.full_name,
    email: Faker::Internet.email,
  )
end

5.times do
  Announcement.create(title: Faker::Marketing.buzzwords,
                      body: Faker::Quote.famous_last_words)
end

10.times do |n|
  Activity.create(
    title:  "#{n.to_s} do cool stuff"
  )
end

Activity.all.each do |activity|
  activity.approve
end
# create some Leaderboards
5.times do |n|
  lb = Leaderboard.create(
    created_by: admin,
    description: "leaderboard #{n} : put pressure on $LOCAL_ELECTION by fall"
  )
  puts lb
end

# complete activities

Leaderboard.all.each do |lb|
  lb.add_activity(Activity.all.sample)
  lb.add_activity(Activity.all.sample)
  lb.add_activity(Activity.all.sample)
  lb.add_activity(Activity.all.sample)
  lb.add_activity(Activity.all.sample)
  
  lb.add_participant(User.all.sample)
  lb.add_participant(User.all.sample)
  lb.add_participant(User.all.sample)
  lb.add_participant(User.all.sample)
  lb.add_participant(User.all.sample)
end

# complete some activities


