class ChangePhoneTypeInLawyers < ActiveRecord::Migration[7.0]
  def change
    change_column :lawyers, :phone, :string
  end
end
