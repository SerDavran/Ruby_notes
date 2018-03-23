# /patern/
# OR |
# b+ one or more 
# b* zero or more
# \s 'whitespace chraracters' => space, tab, new line
# \d digit
# \w character
# . Anything
#### Mats =~ regex ####

line = gets
if line =~ /Perl|Python/
	puts "Scripting language mentioned: #{line}"
end