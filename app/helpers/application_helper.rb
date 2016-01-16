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
	def total_ports
		@current_location=PORT[self.current_location]
		@origin=PORT[self.origin]
		@stop=PORT[self.stop]
		@destination=PORT[self.destination]
		@total_ports=[@current_location,@origin,@stop,@destination]
	end
end
