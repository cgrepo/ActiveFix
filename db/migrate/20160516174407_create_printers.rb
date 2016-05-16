class CreatePrinters < ActiveRecord::Migration
  def change
    create_table :printers do |t|
      t.string :name
      t.string :type
      t.references :EquipmentProfile, index: true, foreign_key: true
      t.references :Network, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
