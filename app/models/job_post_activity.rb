class JobPostActivity < ApplicationRecord
    belongs_to :user,optional:true , dependent: :destroy
    belongs_to :job_post,optional:true , dependent: :destroy
end
