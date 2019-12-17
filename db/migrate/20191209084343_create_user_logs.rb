class CreateUserLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :user_logs do |t|
      t.date :last_login_date
      t.date :last_job_apply_date
      t.timestamps
    end
    add_reference :user_logs, :user, foreign_key: true
  end
end
