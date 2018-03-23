# Numbers
# Fixnum 0d
# Negative -
# Hexademical 0x
# Octal 0
# Binary 0b

3.times {print "x "}
1.upto(5) {|i| print "#{i} "}
99.downto(95) {|i| print "#{i} "}
50.step(80, 5) {|i| print "#{i} "}
puts ""
puts "An easy way to print the multiplication table of 7 in one line: "
0.step(70, 7).with_index {|i, index| puts "#{index}*7=#{i}"}
