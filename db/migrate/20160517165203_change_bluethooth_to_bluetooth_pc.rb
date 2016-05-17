class ChangeBluethoothToBluetoothPc < ActiveRecord::Migration
  def change
  	rename_column	:pcs, :bluethooth, :bluetooth
  end
end
