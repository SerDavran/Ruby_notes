require 'csv'
#relative => same_folder
require_relative 'book_in_stock'

class CsvReader
	def initialize
		@book_in_stock = []
	end

	def read_in_csv_data(csv_file)
		CSV.foreach(csv_file, headers: true) do |row|
			@book_in_stock << BookInStock.new(row["ISBN"], row["Price"])
		end
	end

	def total_value_in_stock
		sum = 0.0
		@book_in_stock.each {|book| sum += book.price}
		sum
	end

	def number_of_each_isbn
		book_hash = Hash.new(0)
		@book_in_stock.each {|book| book_hash[book.isbn] += 1}
		book_hash.each do |key, value|
			puts "ISBN: #{key}, Count: #{value}"
		end
	end
end

