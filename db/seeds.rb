# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# user
User.create!(
  email: "bubu@gmail.com",
  password_digest:  "123456",
  )
50.times do |n|
email = "user#{n+1}@gmail.com"
password = "123456"
User.create!(
  email: email,
  password_digest:  password,
  )
end

job_description = Faker::Job.title 
JobPost.create!(
  job_description:  job_description ,
)

10.times do |n|
job_description = Faker::Job.title 
JobPost.create!(
  job_description:  job_description ,
)
end
# JobPostActivity.create!(
#   user_id: 1, 
#   job_post_id: 1)
10.times do
  user_id = User.all[rand(0..50)].id
  job_post_id =  JobPost.all[rand(0..10)].id
  JobPostActivity.create!(user_id: user_id, job_post_id: job_post_id)
end
