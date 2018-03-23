#Blocks
# Block 1
=begin
{ puts 'Hello' }
# Block 2
do
	puts 'Hello'
	puts 'Hello second line'
end
=end

def block(a,b)
	print "I will display first parameter: #{a}"
	yield('test1', 'test2')
	print "i will display the second parameter #{b} "
	yield
end

block('a','b') { |block_par1, block_par2| print " #{block_par1} and #{block_par2} "}

#Iterators
puts ''
animals = %w{ ena duo tria }
#1
animals.each { |animal| puts animal }
#2
animals.each do |value|
	puts "#{value}"
end
#3
num = 5
num2 = 6
[1, 2, 3].each do |value; num|
	num = value
end
puts "#{num}" # => 5, Με το ; κάνω την num τοπική στο block, αλλιώς αλλάζει και # => 3


5.times { puts '*' }
3.upto(6) { |i| print i }
puts ''
('a'...'d').each { |char| puts char }

# External iteretors = Enumerators
# Enumerators take something that’s normally executable code (the act of iterating) and turn it into an object
a = [ 1, 3, 'cat' ]
h = { dog: 'canine', fox: 'vulpine' }
#1
enum_a = a.to_enum
enum_b = h.enum_for
#2
enum_c = a.each # => Create an Enumerator using an internal iterator

puts enum_a.next # => 1
puts enum_a.next # => 3

# Enumerator example
short_enum = [1, 2, 3].to_enum
long_enum = ('a'..'z').enum_for
# loop αν τελειώσει ένα από τα δύο απλά σταματάει χωρίς errors
loop do
	puts "#{short_enum.next} - #{long_enum.next}"
end

result = []
['a', 'b', 'c'].each_with_index { |item, index| result << [item, index] }
p result
# Enumerator for Chars
result = []
result2 = []
# => Το each_char δεν έχει block και φέρνει πίσω enumerator
"cat".each_char.each_with_index { |value, index| result << [value, index] }
p result
# ή
"dog".each_char.with_index { |value, index| result2 << [value, index] }
p result2
# Χωρίς το :each_char είναι λάθος γιατί το string δεν γίνεται enumerator. Πρέπει να γίνει enumerator βάσει char
enum_cat = "cat".to_enum(:each_char)
p enum_cat.to_a
p enum_cat
# Enumerator με άλλες μεθόδους
enum_in_threes = (1..10).enum_for(:each_slice, 3)
p enum_in_threes.to_a

#Block to object = Lambda
#1
bo = lambda {|params| puts "Hello i am param: #{params}"}
bo.call 99
bo.call 'Cat'
#2
p1 = -> params, params2 { puts "Hello: #{params} and #{params2}" }
p1.call("Sera", "Marie")
#3
proc1 = lambda do |a, *b, &block|
	puts "a = #{a.inspect}"
	puts "b = #{b.inspect}"
	block.call
end
proc2 = -> a, *b, &block do
	puts "a = #{a.inspect}"
	puts "b = #{b.inspect}"
	block.call
end

proc1.call(1, 2, 3, 4) { puts "Call the block" }
proc2.call(5, 6, 7, 8) { puts "Call the block2" }