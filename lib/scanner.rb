require_relative './space_scan'
require_relative './syntax_scan'

class Scanner
  attr_reader :errors
  def initialize(lines)
    @errors = []
    @lines = lines
    @space_scanner = SpaceScanner.new
    @syntax_scanner = SyntaxScanner.new
    space_errors
    syntax_errors
  end

  def space_errors
    space_errors_on_last_line
    space_errors_on_trailing_space
    space_errors_on_opening_curly_bracket
    space_errors_on_indentation
  end

  def syntax_errors
    missing_semicolon_errors
  end

  def missing_semicolon_errors
    
    @lines.each_with_index do |line, index|
      next if line.include?('{') || line.include?('}') || line == "\n" || line.end_with?(",\n")
      @errors << @syntax_scanner.missing_semicolon_scan(line, index)
    end
    errors
  end

  def space_errors_on_last_line
    @errors << @space_scanner.last_line_scan(@lines)
  end

  def space_errors_on_trailing_space
    @lines.each_with_index do |line, index|
      @errors << @space_scanner.trailing_space_scan(line, index)
    end
  end

  def space_errors_on_opening_curly_bracket
    @lines.each_with_index do |line, index|
      next unless line.include?('{')

      @errors << @space_scanner.space_before_curly_bracket_scan(line, index)
    end
  end

  def space_errors_on_indentation
    @lines.each_with_index do |line, index|
      next if line == "\n" or line.end_with?(",\n") or line.start_with?('@')
      next if ['{', '}'].any? { |curly| line.include? curly }

      @errors << @space_scanner.indentation_scan(line, index)
    end
  end
end
