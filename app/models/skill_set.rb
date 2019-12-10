class SkillSet < ApplicationRecord
    has_many :job_post_skill_sets
    has_many :job_posts, through: :job_post_skill_sets
end
