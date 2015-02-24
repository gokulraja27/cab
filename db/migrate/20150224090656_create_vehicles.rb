class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :name
      t.references :vehicle_type, index: true

      t.timestamps null: false
    end
    add_foreign_key :vehicles, :vehicle_types
  end
end
