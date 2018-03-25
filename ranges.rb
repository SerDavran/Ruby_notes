# Ranges
range_1 = 0...10
range_2 = 'a'..'z'

p range_1.to_a
enum_r_2 = range_2.to_enum
puts enum_r_2.next
puts enum_r_2.next

#Methods
puts range_1.include?(5)
puts range_1.max
p range_1.reject {|i| i<6}
puts range_1.inject(:+)