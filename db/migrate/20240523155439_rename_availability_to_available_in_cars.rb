class RenameAvailabilityToAvailableInCars < ActiveRecord::Migration[7.1]
  def change
    rename_column :cars, :availability, :available
  end
end
