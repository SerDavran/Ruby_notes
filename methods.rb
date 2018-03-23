# String methods
# Replace first
'string Perl Perl'.sub(/Perl/, 'Ruby')
# Replace all
'string Perl Perl'.gsub(/Perl/, 'Ruby')
# Make same string object
person1 = "Jim"
person2 = person1.dup
# Downcase
person1.downcase
# See encoding
person1.encoding
# Substring array with patern
'asd asd'.scan(/patern/)
a = [1, 2, "γ"]
a.collect {|a| a.succ }# Όλα ένα μετά
puts a.inspect

# Output
puts 'Something in string format'
print 'Something in same line ... '
p 'Quick print object'

# Class
person = 'Tim'
puts person.class
puts person.object_id
puts person

#Arrays
a = [ 13, 'string', 1.2 ]
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