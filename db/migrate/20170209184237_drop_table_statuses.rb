class DropTableStatuses < ActiveRecord::Migration[5.0]
  def change
  	drop_table :statuses
  end
end
