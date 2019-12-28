class JobPostActivity < ApplicationRecord
    belongs_to :user,optional:true 
    belongs_to :job_post,optional:true 
end