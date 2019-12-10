class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
    	t.string 	"company_name"
    	t.text 		"profile_description"
    	t.date		"establishment_date"
    	t.string	"company_website_url"
      t.timestamps
    end
    add_reference :companies, :business_streams, foreign_key: true
  end
end
