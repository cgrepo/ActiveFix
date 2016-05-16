class EquipmentProfile < ActiveRecord::Base
  belongs_to :Dependency
  has_many :pcs
  has_many :copiers
  has_many :printers
  has_many :screens
  has_many :pows
end
