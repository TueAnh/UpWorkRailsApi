class CreateJobPostSkillSets < ActiveRecord::Migration[5.2]
  def change
    create_table :job_post_skill_sets do |t|
      t.integer :skil_level
      t.timestamps
    end
    add_reference :job_post_skill_sets, :skill_sets, foreign_key: true
    add_reference :job_post_skill_sets, :job_posts, foreign_key: true
  end
end
