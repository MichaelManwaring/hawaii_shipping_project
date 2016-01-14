class Trip < ActiveRecord::Base
	belongs_to :route
	belongs_to :ship
	has_many :jobs
end
