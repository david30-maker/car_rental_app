class RenamePricePerDatToPricePerDayInCars < ActiveRecord::Migration[7.1]
  def change
    rename_column :cars, :price_per_dat, :price_per_day
  end
end
