# Hash 1
h = {
	'Serafim' => '26',
	'Elena' => '32',
	'Soto' => '50'
}
# Hash 2
h2 = {
	Serafim: 26,
	Elena: 32,
	Soto: 50
}
# Hash 3
h3 = Hash.new # Deafult nil, Hash.new(0)

puts "#{h['Serafim']}"
h[12] = 'cat'
puts h.inspect