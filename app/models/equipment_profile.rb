class EquipmentProfile < ActiveRecord::Base
  belongs_to :Dependency
  has_many :PC
end
