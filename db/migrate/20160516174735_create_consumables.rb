class CreateConsumables < ActiveRecord::Migration
  def change
    create_table :consumables do |t|
      t.string :type
      t.string :model
      t.references :Copier, index: true, foreign_key: true
      t.references :Printer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
