class Changefieltype < ActiveRecord::Migration[7.0]
  def change
    change_column :reservations, :reservationdate, :datetime
  end
end
