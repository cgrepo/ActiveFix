class AddDelegationToDependencyProfile < ActiveRecord::Migration
  def change
    add_column :dependency_profiles, :delegation, :string
  end
end
