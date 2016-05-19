class EquipmentProfilesController < ApplicationController
	def new
		@equipment_profile = EquipmentProfile.new
	end
end
