class PcsController < ApplicationController
	def index
		@pcs = Pc.all
	end

	def new
		@pc = Pc.new
		@equipment_profiles = EquipmentProfile.all.pluck(:serial_number,:no_inventary)
	end
end
