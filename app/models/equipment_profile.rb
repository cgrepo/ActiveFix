class EquipmentProfile < ActiveRecord::Base
	has_one :pc
	has_one :pow
	has_one :printer
	has_one :screen
	
end
