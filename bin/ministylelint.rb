require_relative '../lib/reader.rb'
require_relative '../lib/scanner.rb'
require_relative '../lib/reporter.rb'
require 'byebug'


class MiniLint
  def initialize(file)
    @valid_path = /^[\W|\w]+.js$/
    puts 'Initializing Mini Style Lint... '
    puts ''
    puts 'Reading file(s) from working directory...'
    @file = file
    @lines_to_scan = read
    @errors = fetch_errors
    report_errors
    
  end

  def read
    if @file.nil?
      read_files
    else
      if File.exist?(@file)
        read_file  
      else
        puts "Invalid file, please input valid file." unless @valid_path.match?(@file)
      end
    end
  end

  def read_file
    puts 'Scanning file for possible errors...'
    puts ''
    reader = Reader.new(@file)
    lines = reader.buffer_arr
  end

  def fetch_errors
    scanner = Scanner.new(@lines_to_scan)
    scanner.errors
    
  end

  def report_errors
    reporter = Reporter.new
    reporter.report(@errors, @file)
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
files = ARGV
files.each_with_index  {|f, index|
  p "#{index}::#{f}"
}
p file
# debugger
mini_lint = MiniLint.new(file)


