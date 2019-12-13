class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string    :name
      t.string    :email
      t.string    :password_digest
      t.date 		  "date_of_birth"
    	t.boolean 	"gender"
    	t.boolean 	"is_active"
    	t.string 	  "contact_number"
    	t.boolean 	"sms_notification_active"
    	t.boolean 	"email_notification_acive"
    	t.string 	  "user_image"
    	t.date 		  "registration_date"
      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
