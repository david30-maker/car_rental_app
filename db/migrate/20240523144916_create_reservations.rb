class CreateReservations < ActiveRecord::Migration[7.1]
  def change
    create_table :reservations do |t|
      t.string :user_name
      t.string :user_email
      t.date :start_date
      t.date :end_date
      t.references :car, null: false, foreign_key: true

      t.timestamps
    end
  end
end
