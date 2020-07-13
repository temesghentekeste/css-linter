require_relative '../lib/reader.rb'
require_relative '../lib/scanner.rb'
require 'byebug'


class MiniLint
  def initialize(file)
    @valid_path = /^[\W|\w]+.js$/
    puts 'Initializing Mini Style Lint... '
    puts ''
    puts 'Reading file(s) from working directory...'
    @file = file
    scan
  end

  def scan
    if @file.nil?
      scan_files
    else
      if File.exist?(@file)
        scan_file  
      else
        puts "Invalid file, please input valid file." unless @valid_path.match?(@file)
      end
    end
  end

  def scan_file
    puts 'Scanning file for possible errors...'
    puts ''
    reader = Reader.new(@file)
    lines = reader.buffer_arr
    scanner = Scanner.new(lines)
    errors_hash = Hash.new
    errors = scanner.errors
    errors.delete(nil)
    errors_hash[@file] = errors
    formatter = Formatter.new

    errors_hash.each do |key,errorrs_array|
      key = formatter.format_file(key)
      errorrs_array.each {|error|
        puts "#{key}:#{error}"
      }
    end
  end

  # def scan_files
  #   current_dir = Dir.pwd
  #   files = Dir["#{current_dir}/**/*.css"]

  #   files.each do |file|
  #     reader = Reader.new(file)
  #     lines = reader.buffer_arr
  #     scanner = Scanner.new(lines)
  #     errors = scanner.errors
  #     errors.delete(nil)
  #     p errors
  #     errors.each do |error|
  #      puts error
  #     end
  #   end
  # end
end






file = ARGV[0]
p file
# debugger
mini_lint = MiniLint.new(file)


