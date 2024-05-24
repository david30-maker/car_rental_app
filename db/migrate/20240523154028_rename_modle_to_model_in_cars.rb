class RenameModleToModelInCars < ActiveRecord::Migration[7.1]
  def change
    rename_column :cars, :modle, :model
  end
end
