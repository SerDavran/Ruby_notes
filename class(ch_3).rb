# Class definition
# Internal state = instance variables
# External state = attributes
class BookInStock
	# Attributes
	# attr_reader :isbn
	# attr_writer writer
	# attr_accessor :price

	# Initialize object state
	def initialize(isbn, price)
		# instance variable available to all instance methods
		@isbn = isbn
		@price = Float(price)
	end
	# Attribute reader
	def isbn
		@isbn
	end
	def price
		@price
	end
	# Atribute writer
	def price=(new_price)
		@price = new_price
	end
	# Virtual attributes have no corresponding instance variable
	def price_in_cents
		Integer(@price*100 + 0.5)
	end
	# Mapping values to instance variable
	def price_in_cents=(cents)
		@price = cents / 100.0
	end
	# Overwrites puts method
	def to_s
		"ISBN: #{@isbn}, PRICE: #{@price}"
	end
end

b1 = BookInStock.new('23232323', '23.5')
b2 = BookInStock.new('34343434', 54.5)
puts "Book1-- ISBN: #{b1.isbn}, PRICE: #{b1.price}"
b1.price = b1.price * 0.75
puts "Book1-- ISBN: #{b1.isbn}, PRICE: #{b1.price}, PRICE_in_cents: #{b1.price_in_cents}"
b1.price_in_cents = 2545
puts "Book1-- ISBN: #{b1.isbn}, PRICE: #{b1.price}, PRICE_in_cents: #{b1.price_in_cents}"
#p b1
#puts b1
#p b2
#puts b2