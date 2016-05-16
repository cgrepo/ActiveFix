class AddUsersToPc < ActiveRecord::Migration
  def change
    add_column :pcs, :users, :string
  end
end
