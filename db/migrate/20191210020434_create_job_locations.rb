class CreateJobLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :job_locations do |t|
    	t.string	"street_address"
    	t.string	"city"
    	t.string	"country"
    	t.string	"zip"
      t.timestamps
    end
  end
end
