class JobPost < ApplicationRecord
    has_many :job_post_activities, dependent: :destroy, foreign_key: :job_post_id
    has_many :users, through: :job_post_activities

    has_many :job_post_skill_sets, dependent: :destroy, foreign_key: :job_post_id
    has_many :skill_sets, through: :job_post_skill_sets
    belongs_to :company
    belongs_to :job_location
    belongs_to :job_type
end
