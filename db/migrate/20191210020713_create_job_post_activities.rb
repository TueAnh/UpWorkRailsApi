class CreateJobPostActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :job_post_activities do |t|
      t.date :apply_date
      t.timestamps
    end
    add_reference :job_post_activities, :users, foreign_key: true
    add_reference :job_post_activities, :job_posts, foreign_key: true 
  end
end
