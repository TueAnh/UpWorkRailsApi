class JobPostActivity < ApplicationRecord
    belongs_to :users
    belongs_to :job_posts
end
