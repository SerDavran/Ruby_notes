# String methods
# Replace first
'string Perl Perl'.sub(/Perl/, 'Ruby')
# Replace all
'string Perl Perl'.gsub(/Perl/, 'Ruby')
# gsub(/[aeiou]/, '*') Μέσα στην λέξη ότι a,e,i,o,u υπάρχει το αλλάζει με *
# Make same string object
person1 = "Jim Davran"
person2 = person1.dup
# Downcase
person1.downcase
# See encoding
person1.encoding
# Trim repeated characters
person1.squeeze!(" ")
# Split string 
name, surname = person1.split(/\s+/)
# Substring array with patern
'asd asd'.scan(/patern/)
a = [1, 2, "γ"]
# Collect επιστρέφει νέο πίνακα.
# Each δεν επιστέφει τίποτα.
a.collect {|a| a.succ }# Όλα ένα μετά
puts a.inspect

# Output
puts 'Something in string format'
print 'Something in same line ... '
p 'Quick print object'

#Ranges
range1 = 1..10
range1.include?(3)
puts range1.max
p range1.reject {|i| i<6}
puts range1.inject(:+)

# Class
person = 'Tim'
puts person.class
puts person.object_id
puts person

#Arrays
a = [ 13, 'string', 1.2 ]
# Map: Takes enumerable objects and a block
# Return teach time the value of the block. With map! we make changes to the enumerable object
b = [1, 5, 14]
c = ['name1', 'name2', 'name3']
b.map! {|x| x + 1 }
d = c.map {|string| string.upcase}
p b
p c
p d
# Make a table with asdignment
table = 1,2,3,4
p table
a.class
a.length
a.inspect
# a.sort
# Stack arrays
stack = []
stack.push 'Red'
stack.push 'Blue'
stack.push 'Green'
stack.pop 
stack.pop
stack.pop
# Queue
stack.push 'Red'
stack.push 'Green'
stack.shift
stack.shift
# Return n entries
stack.first(3)
stack.last(2)

#Hash
h = {
	'Serafeim' => "26",
	'Elena' => "23",
	'Mama' => "50"
}
h.class
h.length
h.inspect
d2_Array = h.sort_by {|word,count| count} #key,count
