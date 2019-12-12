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

# job_description = Faker::Job.title 
# JobPost.create!(
#   job_description:  job_description ,
# )

# 10.times do |n|
# job_description = Faker::Job.title 
# JobPost.create!(
#   job_description:  job_description ,
# )
# end
# JobPostActivity.create!(
#   user_id: 1, 
#   job_post_id: 1)


# 10.times do
#   user_id = User.all[rand(0..49)].id
#   apply_date = Faker::Date.in_date_period
#   job_post_id =  JobPost.all[rand(0..9)].id
#   JobPostActivity.create!(user_id: user_id,apply_date: apply_date, job_post_id: job_post_id)
# end
