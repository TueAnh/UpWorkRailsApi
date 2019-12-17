class JobPostSkillSet < ApplicationRecord
    belongs_to :skill_set ,optional: true
    belongs_to :job_post,optional: true
end
