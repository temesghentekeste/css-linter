require_relative '../lib/reader.rb'
require_relative '../lib/scanner.rb'

puts 'Initializing Mini Style Lint... '
puts ''
puts 'Reading file from the console...'
file = ARGV[0]
puts 'Scanning file for potential errors...'
puts ''
reader = Reader.new(file)
lines = reader.buffer_arr
scanner = Scanner.new(lines)
errors = scanner.errors
p errors
