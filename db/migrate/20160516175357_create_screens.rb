class CreateScreens < ActiveRecord::Migration
  def change
    create_table :screens do |t|
      t.integer :inches
      t.references :EquipmentProfile, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
