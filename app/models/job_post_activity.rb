class JobPostActivity < ApplicationRecord
    belongs_to :users,optional:true 
    belongs_to :job_posts,optional:true 
end
