# Array
a = [ 13, 'string', 1.2 ]
puts a[1] # => string
puts a[-1] # => 1.2
puts a[0..2] # => 1, string, 1.2
puts a[0...2] # => 1, string
# a[start, count] 
puts a[0,2] # => 13, 'string'
puts a[1,5] # => string, 1.2
# Set value
a[1] = 5
a[4] = 14 # => a[3] = nil
puts a.inspect
puts a.sort
# Array
b = Array.new
# Word array
c = %w{ 1 2 3 4 5 6 7 8 9 10 }