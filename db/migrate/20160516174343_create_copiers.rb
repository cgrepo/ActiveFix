class CreateCopiers < ActiveRecord::Migration
  def change
    create_table :copiers do |t|
      t.string :name
      t.references :EquipmentProfile, index: true, foreign_key: true
      t.references :Network, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
