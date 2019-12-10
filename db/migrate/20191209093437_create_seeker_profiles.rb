class CreateSeekerProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :seeker_profiles do |t|
      t.string 	"first_name"
    	t.string 	"last_name"
    	t.float 	"current_salary"
    	t.boolean	"is_annually_monthly"
    	t.string	"currency"
      t.timestamps
    end
    add_reference :seeker_profiles, :users, foreign_key: true
  end
end
