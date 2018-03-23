class Person
	include Comparable
	attr_reader :name
	def initialize(name)
		@name = name
	end

	def to_s 
		"#{@name}"
	end

	def <=>(other)
		self.name <=> other.name
	end
end

p1 = Person.new("Serafim")
p2 = Person.new("Xaritini")

# Μπορώ να κάνω sort και σύγκριση αφού έχω την def <=>
if p1 > p2
	puts "#{p1.name} > #{p2.name}"
else
	puts "#{p2.name} > #{p1.name}"
end

puts "Sorted list:" 
puts [p1, p2].sort