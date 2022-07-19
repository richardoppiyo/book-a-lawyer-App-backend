class ChangeRatesTypeInLawyers < ActiveRecord::Migration[7.0]
  def change
    change_column :lawyers, :rates, :decimal
  end
end
