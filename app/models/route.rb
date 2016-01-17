class Route < ActiveRecord::Base
	has_many :trips
	has_many :ships, through: :trips

	PORT = ["Hawaii", "Maui", "Lanai", "Moloka'i", "Honolulu", "Kuai"]
	def port_origin
		PORT[self.origin]
	end
	def port_destination
		PORT[self.destination]
	end
	def port_stop
		PORT[self.stop]
	end
	def self.route_hash(o,s,d)
		Route.create(route_name: (PORT[o] + " to " + PORT[d] + " with a stop at " + PORT[s]), origin: o, stop: s, destination: d, duration: ((o-s).abs+(s-d).abs))
	end
end
