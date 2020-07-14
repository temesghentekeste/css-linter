require_relative 'scan'

class SyntaxScanner < Scan
  def initialize
    super("Syntax error")
  end
  
  def missing_semicolon_scan(line, index)
    "Line #{index + 1}: #{@error_type} missing ';'." if !line.end_with?(";\n") and !line.strip.end_with?(';')
  end
end
