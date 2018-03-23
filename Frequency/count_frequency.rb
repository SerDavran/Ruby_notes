def count_frequency(word_array)
	hash = Hash.new(0)
	for item in word_array
		hash[item] += 1
	end
	hash
end