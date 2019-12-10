class JobPost < ApplicationRecord
    has_many :job_post_activities
    has_many :users, through: :job_post_activities

    has_many :job_post_skill_sets
    has_many :skill_sets, through: :job_post_skill_sets
end
