class AddFkToJobPost < ActiveRecord::Migration[5.2]
  def change
    add_reference :job_posts, :job_location, foreign_key: true
    add_reference :job_posts, :job_type, foreign_key: true
    add_reference :job_posts, :company, foreign_key: true
  end
end
