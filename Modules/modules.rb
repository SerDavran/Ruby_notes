# Mixins 
# Όταν βάζουμε το module με require σε μία class και αυτή κληρονομεί όλες τις μεθοδους του Module σαν παιδί του module
module Debug
	def who_am_i?
		"#{self.class.name} (id: #{self.object_id}): #{self.name}"
	end
end

class Phonograph
	include Debug
	attr_reader :name
	def initialize(name)
		@name = name
	end
end

class EightTrack
	include Debug
	attr_reader :name
	def initialize(name)
		@name = name
	end
end

ph = Phonograph.new("West and Blues")
et = EightTrack.new("Surrealistic pillow")

puts ph.who_am_i?
puts et.who_am_i?
