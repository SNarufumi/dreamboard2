class AddColumnToUsers < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :name, :string
  	add_column :users, :age, :string
  	add_column :users, :job, :string
  end
end
