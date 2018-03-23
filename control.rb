# If
today = Time.now
if today.sunday?
	puts "What a beautifull day!!"
elsif today.saturday?
	puts "Go out"
else
	puts "Go to work"
end
# While
num = 0
while num<5
	puts "Number is: #{num}"
	num += 1
end
# for in
a = [1, 2, 7]
for i in a
	puts "Metraw: #{i}"
end
# Each
a.each do |i|
	puts i
end
# Each with index
a.each.with_index do |a, index|
	puts "Index: #{index} -- Value: #{a}"
end
# Collect, Παίρνει όλο τον πίνακα μαζί και τον αλλάζει
a.collect {|x| puts x.succ }
# Inject
puts [1, 3, 5, 7].inject(2) {|sum, element| sum+element} # 2 αρχική τιμή του value(sum) και το element κάθε φορά παίρνει το στοιχείο του πίνακα. Αν δεν έχω παράμετρο ξεκινάω το sum με το πρώτο στοιχείο του πίνακα και το element με το δεύτερο.
puts [1, 2, 2, 5, 6].inject(:+) # Το + είναι method και το :+ είναι symbol για την μέθοδο


