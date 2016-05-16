class CreateDependencyProfiles < ActiveRecord::Migration
  def change
    create_table :dependency_profiles do |t|
      t.string :location
      t.string :responsable
      t.string :telephone
      t.string :address
      t.references :Dependency, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
