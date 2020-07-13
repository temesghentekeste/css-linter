class SyntaxScanner
  def missing_semicolon_scan(line, index)
    "Syntax error: missing ';' on line #{index + 1}." if !line.end_with?(";\n") and !line.strip.end_with?(";")
  end
end 