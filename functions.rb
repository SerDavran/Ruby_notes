# method? => true,false
# method! => Change the receiver

def new_method(arg1="new1", arg2="new2", arg3="new3")
	puts "Par1: #{arg1}, Par2: #{arg2}, Par3: #{arg3}"
end

def varargs(arg1, *table, arg2)
	puts "Arg1: #{arg1}, Table: #{table.inspect}, Arg2: #{arg2}"
end
varargs("arg1", "arg2", "arg3", "arg4")

# Method with block as arg
class TaxCalculator
	def initialize(name, &block)
         @name, @block = name, block
	end
	def get_tax(amount)
		puts "#@name on #{amount} = #{ @block.call(amount) }" 
	end
end
tc = TaxCalculator.new("Sales tax") {|amt| amt * 0.075 } # => Στο new περνάω name και block
tc.get_tax(100) 
tc.get_tax(250) 

# Method calling in a class
class Test
	def new_call()
		first_call() # => Θα καλεστούν από το object που κάλεσε την new_call()
		second_call()
		third_call()
	end

	private 

	def first_call()
	end
	def second_call()
	end
	def third_call()
	end
end

# => Return Array
def array_return
	num_var = 0
	(1..100).each do |num|
		num_var = num_var + num
	end
	return 100, num_var
end

a = array_return
puts a.inspect

# => Block as parametr => Με το &
print "(t)imes or (p)lus: " 
operator = gets
print "number: "
number = Integer (gets)
if operator =~ /^t/
calc = lambda {|n| n*number }
else
  calc = lambda {|n| n+number }
end
puts((1..10).collect(&calc).join(", "))

# => Method parameter hash. Αντί για ένα αστέρι για πίνακα, βάζω **για Hash 
def search(field, genre: nil, duration: 120, **rest)
	p [field, genre, duration, rest]
end

search(:title, duration: 300, genre: "Jazz", stars: 3, tempo: "Slow")


