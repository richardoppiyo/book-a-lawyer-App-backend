class AddLawyerRefReservation < ActiveRecord::Migration[7.0]
  def change
    add_reference :reservations, :lawyer, null: false, foreign_key: true
  end
end
