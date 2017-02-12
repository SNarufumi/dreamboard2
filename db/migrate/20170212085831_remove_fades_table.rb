class RemoveFadesTable < ActiveRecord::Migration[5.0]
  def change
  	drop_table :fades
  end
end
