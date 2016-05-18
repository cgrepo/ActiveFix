class ComputersController < ApplicationController
  
  def index
    @computers = Pc.all
  end

  def show
  end

  def new
    @equipmentProfile = EquipmentProfile.new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end
