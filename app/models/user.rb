class User < ApplicationRecord
  has_secure_password
  belongs_to :user_type ,optional: true
  has_many :job_post_activities
  has_many :job_posts, through: :job_post_activities, dependent: :destroy
  has_many :user_logs
end
