class Dependency < ActiveRecord::Base
	has_one :DependencyProfile
	has_many :EquipmentProfile
	
end
