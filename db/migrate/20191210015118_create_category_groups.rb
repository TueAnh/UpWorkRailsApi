class CreateCategoryGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :category_groups do |t|
      t.string :category_group_name
      t.timestamps
    end
  end
end
