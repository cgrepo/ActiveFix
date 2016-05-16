class Pc < ActiveRecord::Base
  belongs_to :EquipmentProfile
  belongs_to :Network
end
