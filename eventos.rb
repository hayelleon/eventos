require 'pry'

class Evento
	attr_accessor :event_name, :capacity, :place, :address

	def initialize(event_name, capacity, place, address)
		self.event_name = event_name
		self.capacity = capacity
		self.place = place
		self.address = address
	end

	

 	def to_s
	    "Evento: #{self.event_name} (#{self.capacity})\n"+	
	    "Local: #{self.place} - Endereço: #{self.address}\n"
  	end
end
