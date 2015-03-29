class CreateDistances < ActiveRecord::Migration
  def change
    create_table :distances do |t|
      t.integer :start_place_id
      t.integer :end_place_id
      t.integer :kilometer

      t.timestamps null: false
    end
  end
end
