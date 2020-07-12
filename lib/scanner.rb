require_relative './space_scan'
class Scanner
  attr_reader :errors
  def initialize(lines)
    @errors = []
    @lines = lines
    @space_scanner = SpaceScanner.new
    scan_errors
  end

  def scan_errors
    @errors << @space_scanner.last_line_scan(@lines)
    @lines.each_with_index do |line, i|
      @errors << @space_scanner.trailing_space_scan(line, i)
    end
  end
end
