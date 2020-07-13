require_relative 'formatter'
class SyntaxScanner
  def initialize
    formatter = Formatter.new
    @error_type = formatter.format_error_type("Syntax error")
  end
  def missing_semicolon_scan(line, index)
    "Line #{index + 1}: #{@error_type} missing ';'." if !line.end_with?(";\n") and !line.strip.end_with?(";")
  end
end 