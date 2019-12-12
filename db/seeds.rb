## BusinessStream table 10
# 10.times do
#   business_stream_name = Faker::Company.catch_phrase
# BusinessStream.create!(
#   business_stream_name:  business_stream_name,
# )
# end
##Company Table 10
# 10.times do
#     company_name =Faker::Company.name
#     profile_description = Faker::TvShows::SiliconValley.quote
#     establishment_date  = Faker::Date.in_date_period
#     company_website_url = "https://www.amazon.com"
#     business_streams_id = BusinessStream.all[rand(0..9)].id
#     Company.create!(
#       company_name:  company_name,
#       profile_description:  profile_description,
#       establishment_date:  establishment_date,
#       company_website_url:  company_website_url,
#       business_streams_id: business_streams_id,
#   )
# end 

#CompanyImage Table 10
# 10.times do
#     company_image = Faker::Company.logo
#      companies_id = Company.all[rand(0..9)].id
#     CompanyImage.create!(
#     company_image:  company_image,
#     companies_id: companies_id
#   )
# end 
# ======================================================
# UserType Table 50
# 10.times do 
# user_type_name = rand(0..2)
# UserType.create!(
#   user_type_name: user_type_name,
#   )
# end


## user Table 50
# User.create!(
#   email: "bubu@gmail.com",
#   password_digest:  "123456",
#   )
# 50.times do |n|
# email = "user#{n+1}@gmail.com"
# password = "123456"
# User.create!(
#   email: email,
#   password_digest:  password,
#   )
# end

##UserLog Table 60
# 60.times do 
# users_id = User.all[rand(0..49)].id
# last_login_date = Faker::Date.in_date_period
# last_job_apply_date =Faker::Date.in_date_period
# UserLog.create!(
#   users_id: users_id,
#   last_login_date: last_login_date,
#   last_job_apply_date: last_job_apply_date,
#   )
# end
# ======================================================


##JobLocation Table 10
# 10.times do
#   street_address = Faker::Address.street_address
#   city = Faker::Address.city
#   country =  Faker::Address.country
#   zip = Faker::Address.zip_code
#   JobLocation.create!(
#     street_address: street_address,
#     city: city, 
#     country: country,
#     zip: zip,
# )
# end

##JobLocation Table 10
# 10.times do
#   street_address = Faker::Address.street_address
#   city = Faker::Address.city
#   country =  Faker::Address.country
#   zip = Faker::Address.zip_code
#   JobLocation.create!(
#     street_address: street_address,
#     city: city, 
#     country: country,
#     zip: zip,
# )
# end

## JobType Table 3  # Khong trung ten
# 3.times do 
# job_type = Faker::Job.employment_type
# JobType.create!(
#   job_type: job_type,
#   )
# end


##JobPost Table 10
# 10.times do |n|
# job_description = Faker::Job.title 
# JobPost.create!(
#   job_description:  job_description ,
# )
# end

##JobPostActivity Table 10
# 10.times do
#   user_id = User.all[rand(0..49)].id
#   apply_date = Faker::Date.in_date_period
#   job_post_id =  JobPost.all[rand(0..9)].id
#   JobPostActivity.create!(user_id: user_id,apply_date: apply_date, job_post_id: job_post_id)
# end

# ***
## SkillSet Table 3  # Khong trung ten
# 3.times do 
# skill_set_name = Faker::Job.key_skill
# SkillSet.create!(
#   skill_set_name: skill_set_name,
#   )
# end

#JobPostSkillSet Table 10
# 10.times do
#   skil_level = rand(0..2)
#   skill_sets_id = SkillSet.all[rand(0..2)].id
#   job_posts_id =  JobPost.all[rand(0..9)].id
#   JobPostSkillSet.create!(skil_level: skil_level,skill_sets_id: skill_sets_id, job_posts_id: job_posts_id)
# end

