class CreateCompanyImages < ActiveRecord::Migration[5.2]
  def change
    create_table :company_images do |t|
    	t.string	"company_image"
      t.timestamps
    end
    add_reference :company_images, :companies, foreign_key: true
  end
end
