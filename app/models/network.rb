class Network < ActiveRecord::Base
	has_many :pcs
	has_many :copiers
	has_many :printers
end
