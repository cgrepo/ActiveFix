class CreatePcs < ActiveRecord::Migration
  def change
    create_table :pcs do |t|
      t.string :name
      t.string :hd
      t.string :os
      t.string :workgroup
      t.string :lan_mac
      t.string :wifi_mac
      t.boolean :bluethooth
      t.string :ip
      t.string :mask
      t.references :EquipmentProfile, index: true, foreign_key: true
      t.references :Network, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
