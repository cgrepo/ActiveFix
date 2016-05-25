class EquipmentProfilesController < ApplicationController
	before_action :set_equipment_profile, only: [:show, :edit, :update, :destroy]

	def index
		@equipment_profiles = EquipmentProfile.all
	end

	def show
	end

	def new
		@equipment_profile = EquipmentProfile.new
	end

	def create
		@equipment_profile = EquipmentProfile.new(equipment_profile_params)

    respond_to do |format|
	      if @equipment_profile.save
	        format.html { redirect_to @equipment_profile, notice: 'Equipment was successfully created.' }
	        format.json { render :show, status: :created, location: @equipment_profile }
	      else
	        format.html { render :new }
	        format.json { render json: @equipment_profile.errors, status: :unprocessable_entity }
	      end
    end
	end
	
	def destroy
		@equipment_profile.destroy
    respond_to do |format|
      format.html { redirect_to equipment_profiles_url, notice: 'Equipment profile was successfully destroyed.' }
      format.json { head :no_content }
    end
	end
	
	private
  def set_equipment_profile
      @equipment_profile = EquipmentProfile.find(params[:id])
  end
	
	def equipment_profile_params
      params.require(:equipment_profile).permit(:no_inventary, :serial_number, :service_years, :manufacturer, :model, :notes)
  end
end
