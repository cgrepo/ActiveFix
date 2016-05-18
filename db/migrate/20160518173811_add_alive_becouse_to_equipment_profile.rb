class AddAliveBecouseToEquipmentProfile < ActiveRecord::Migration
  def change
    add_column :equipment_profiles, :alive, :boolean
    add_column :equipment_profiles, :becouse, :string
  end
end
