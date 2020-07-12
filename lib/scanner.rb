require_relative './space_scan'
class Scanner
  attr_reader :errors
  def initialize(lines)
    @errors = []
    @lines = lines
    @space_scanner = SpaceScanner.new
    fetch_errors
  end

  def fetch_errors
    get_errors_on_last_line
    get_errors_on_trailing_space
    get_errors_on_opening_curly_bracket
  end

  def get_errors_on_last_line
    @errors << @space_scanner.last_line_scan(@lines)
    
  end

  def get_errors_on_trailing_space
    @lines.each_with_index do |line, i|
      @errors << @space_scanner.trailing_space_scan(line, i)
    end
    
  end

  def get_errors_on_opening_curly_bracket
    @lines.each_with_index do |line, i|
      next unless line.include?('{')
      @errors << @space_scanner.space_before_curly_bracket_scan(line, i)
    end
  end
end
