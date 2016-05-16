class CreateEquipmentProfiles < ActiveRecord::Migration
  def change
    create_table :equipment_profiles do |t|
      t.string :no_inventary
      t.string :serial_number
      t.string :manufacturer
      t.string :model
      t.integer :service_years
      t.text :notes

      t.timestamps null: false
    end
  end
end
