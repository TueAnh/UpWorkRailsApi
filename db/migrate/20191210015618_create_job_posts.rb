class CreateJobPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :job_posts do |t|
    	t.boolean	"is_company_name_hidden"
    	t.date		"created_date"
    	t.text		"job_description"
    	t.boolean	"is_active"
      t.timestamps
    end
    add_reference :job_posts, :users, foreign_key: true
    add_reference :job_posts, :categories, foreign_key: true
  end
end
