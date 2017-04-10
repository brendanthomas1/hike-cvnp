class CreateTrails < ActiveRecord::Migration[5.1]
  def change
    create_table :trails do |t|
      t.string :name, null: false
      t.float :distance, null: false
      t.string :type, null: false

      t.timestamps
    end
  end
end
