class AddFkToJobPost < ActiveRecord::Migration[5.2]
  def change
    add_reference :job_posts, :job_locations, foreign_key: true
    add_reference :job_posts, :job_types, foreign_key: true
    add_reference :job_posts, :companies, foreign_key: true
  end
end
