class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :category_name
      t.timestamps
    end
    add_reference :categories, :category_group, foreign_key: true
  end
end
