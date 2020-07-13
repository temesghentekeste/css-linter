require_relative 'formatter'
class SyntaxScanner
  def initialize
    formatter = Formatter.new
    @error_type = formatter.format("Syntax error".downcase)
  end
  def missing_semicolon_scan(line, index)
    "#{@error_type} missing ';' on line #{index + 1}." if !line.end_with?(";\n") and !line.strip.end_with?(";")
  end
end 