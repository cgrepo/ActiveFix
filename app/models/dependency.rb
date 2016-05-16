class Dependency < ActiveRecord::Base
	has_one :dependency_profile
	has_many :equipment_profiles

end
