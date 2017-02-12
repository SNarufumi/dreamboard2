class RenamePostColumnToCategories < ActiveRecord::Migration[5.0]
  def change
  	rename_column :posts, :categories, :category_id
  end
end
