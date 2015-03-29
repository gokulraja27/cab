class AddFareToVehicle < ActiveRecord::Migration
  def change
    add_column :vehicles, :fare, :integer
  end
end
