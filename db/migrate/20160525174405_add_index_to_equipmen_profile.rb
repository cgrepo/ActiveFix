class AddIndexToEquipmenProfile < ActiveRecord::Migration
  def change
  	add_index :equipment_profiles, :serial_number, unique: true
  end
end
