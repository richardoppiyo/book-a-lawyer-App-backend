class CreateLawyers < ActiveRecord::Migration[7.0]
  def change
    create_table :lawyers do |t|
      t.string :name
      t.integer :phone
      t.string :email
      t.string :location
      t.integer :rates
      t.text :bio

      t.timestamps
    end
  end
end
