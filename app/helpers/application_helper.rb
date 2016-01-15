module ApplicationHelper
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
end
