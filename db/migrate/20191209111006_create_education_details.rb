class CreateEducationDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :education_details do |t|
      t.string	"institute_university_name"
    	t.date		"starting_date"
    	t.date 		"completion_date"
    	t.float 	"percentage"
    	t.float 	"cgpa" 
      t.timestamps
    end
    add_reference :education_details, :seeker_profiles, foreign_key: true
  end
end
