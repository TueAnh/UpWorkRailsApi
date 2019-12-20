class JobPost < ApplicationRecord
    has_many :job_post_activities,dependent: :destroy
    has_many :users, through: :job_post_activities,dependent: :destroy

    has_many :job_post_skill_sets
    has_many :skill_sets, through: :job_post_skill_sets
    belongs_to :company
    belongs_to :job_location
    belongs_to :job_type
end
