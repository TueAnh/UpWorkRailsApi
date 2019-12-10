class JobPostSkillSet < ApplicationRecord
    belongs_to :skill_sets
    belongs_to :job_posts
end
