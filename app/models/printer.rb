class Printer < ActiveRecord::Base
  belongs_to :EquipmentProfile
  belongs_to :Network
  has_one :Statistic
  has_one :Consumable
end
