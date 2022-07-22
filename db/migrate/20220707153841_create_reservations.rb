class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.date :reservationdate
      t.boolean :is_active
      t.integer :duration

      t.timestamps
    end
  end
end
