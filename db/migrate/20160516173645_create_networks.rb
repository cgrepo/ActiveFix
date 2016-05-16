class CreateNetworks < ActiveRecord::Migration
  def change
    create_table :networks do |t|
      t.string :link_type
      t.string :location
      t.string :ip_range

      t.timestamps null: false
    end
  end
end
