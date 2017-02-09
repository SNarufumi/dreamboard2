class CreateFades < ActiveRecord::Migration[5.0]
  def change
    create_table :fades do |t|
      t.string :content

      t.timestamps
    end
  end
end
