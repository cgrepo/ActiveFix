class CreateEquipmentProfiles < ActiveRecord::Migration
  def change
    create_table :equipment_profiles do |t|
      t.string :no_inventary
      t.string :serial_number
      t.integer :service_years
      t.string :manufacturer
      t.string :model
      t.text :notes
      t.references :Dependency, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
