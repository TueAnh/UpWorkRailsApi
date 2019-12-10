class CreateSeekerSkillSets < ActiveRecord::Migration[5.2]
  def change
    create_table :seeker_skill_sets do |t|
    	t.integer	"skill_level"
      t.timestamps
    end
    add_reference :seeker_skill_sets, :seeker_profiles, foreign_key: true
    add_reference :seeker_skill_sets, :skill_sets, foreign_key: true

  end
end
