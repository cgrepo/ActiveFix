class Consumable < ActiveRecord::Base
  belongs_to :Copier
  belongs_to :Printer
end
