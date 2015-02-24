class AddVehicleCountToVehicle < ActiveRecord::Migration
  def change
    add_column :vehicles, :count, :integer
  end
end
