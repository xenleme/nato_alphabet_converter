require_relative 'lib/nato_alphabet_converter.rb'

print 'Enter the string: '
str = gets.chomp.downcase

puts NatoAlphabetConverter.convert_to_nato(str)
