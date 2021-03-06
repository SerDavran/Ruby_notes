# String ascaping with \
puts 'escape using "\\"'
puts 'That\'s write'
# Escape variables
puts "#{'Ho! '*3}Merry Christmas...!"
puts "Now is #{def time(string)
					'the '+	string
				end
				time('time')
				} for you!!"
# Working with strings late nights

Song = Struct.new(:title, :name, :length)

File.open("text_test_song.txt") do |song_file|
	songs = []

	song_file.each do |line|
		file, length, name, title = line.chomp.split(/\s*\|\s*/)
		name.squeeze!(" ")
		mins, secs = length.scan(/\d+/)
		songs << Song.new(title, name, mins.to_i*60 + secs.to_i)
	end

	puts songs[1]
end