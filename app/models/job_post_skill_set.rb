class JobPostSkillSet < ApplicationRecord
    belongs_to :skill_sets ,optional: true
    belongs_to :job_posts,optional: true
end
