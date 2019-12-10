class CreateSkillSets < ActiveRecord::Migration[5.2]
  def change
    create_table :skill_sets do |t|
    	t.string	"skill_set_name"
      t.timestamps
    end
  end
end
