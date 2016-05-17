class ChangeTypeToGenusPrinter < ActiveRecord::Migration
  def change
  	rename_column	:printers, :type, :genus
  end
end
