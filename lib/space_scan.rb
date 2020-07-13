require_relative 'formatter'
class SpaceScanner

  def initialize
    formatter = Formatter.new
    @error_type = formatter.format("Format error".downcase)
  end

  def last_line_scan(lines)
    return "#{@error_type}trailing blank lines detected." unless lines[-1] == "}\n"
    return "#{@error_type}final newline messing." unless lines.last.include? "\n"
  end

  def trailing_space_scan(line, line_number)
    "#{@error_type}trailing space found on line #{line_number + 1}." if line.end_with?("; \n")
  end

  def space_before_curly_bracket_scan(line, line_number)
    "#{@error_type}there should be a space before curly bracket on line #{line_number + 1}" unless line.match(/[[:space:]]\{/)
  end

  def indentation_scan(line, line_number)
    num_of_spaces_found = line[/\A */].size
    unless num_of_spaces_found == 2
      "#{@error_type}Inconsistent indentation detected.
       Expected 2, but found #{num_of_spaces_found} spaces instead on line #{line_number + 1}."
    end
  end
end
