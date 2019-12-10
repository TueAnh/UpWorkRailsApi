class User < ApplicationRecord
  has_secure_password
  belongs_to :user_types
  has_many :job_post_activities
  has_many :job_posts, through: :job_post_activities
end
