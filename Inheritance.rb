# SuperClass
class Parent
	def initialize(name)
		@name = name
	end 
	def say_hello
		puts "Hello from #{self}" #=> puts self δηλαδή την to_s  
	end
	def to_s
		"person #{@name}"
	end
end

p = Parent.new("Seras")
p.say_hello

# SubClass
class Child < Parent
end

c = Child.new("Panos")
c.say_hello

puts "The BasicObject superclass is #{BasicObject.superclass}"
puts "The objects superclass is #{Object.superclass}"
puts "The superclass of Parent is #{Parent.superclass}"
puts "The superclass of Child is #{Child.superclass}"