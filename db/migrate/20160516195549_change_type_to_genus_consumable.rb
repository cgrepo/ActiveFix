class ChangeTypeToGenusConsumable < ActiveRecord::Migration
  def change
  	rename_column	:consumables, :type, :genus
  end
end
