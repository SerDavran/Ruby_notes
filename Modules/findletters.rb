class FindLetters
	include Enumerable

	def initialize(string)
		@string = string
	end
	# Την παίρνω απο την Enumerable
	def each  
		@string.scan(/[sxi]/) do |item|
			yield item
		end
	end
end

string = FindLetters.new("serafim and xaritini")
puts string.inject(:+)
puts "string".each_char.inject(:+)