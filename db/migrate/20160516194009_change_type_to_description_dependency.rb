class ChangeTypeToDescriptionDependency < ActiveRecord::Migration
  def change
  	rename_column	:dependencies, :type, :description
  end
end
