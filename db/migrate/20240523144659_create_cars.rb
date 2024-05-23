class CreateCars < ActiveRecord::Migration[7.1]
  def change
    create_table :cars do |t|
      t.string :make
      t.string :modle
      t.integer :year
      t.decimal :price_per_dat
      t.boolean :availability

      t.timestamps
    end
  end
end
