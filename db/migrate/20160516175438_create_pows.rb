class CreatePows < ActiveRecord::Migration
  def change
    create_table :pows do |t|
      t.string :type
      t.references :EquipmentProfile, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
