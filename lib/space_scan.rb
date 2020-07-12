require 'byebug'
class SpaceScanner
  def last_line_scan(lines)
    p lines.last
    p lines[-2]
    return 'trailing blank lines detected.' if lines[-1] == "\n"
    return 'final newline messing.' unless lines.last.include? "\n"
  end

  def trailing_space_scan(line, line_number)
    "trailing space found on line #{line_number + 1}." if line.end_with?("; \n")
  end

  def space_before_curly_bracket_scan(line, line_number)
    "there should be a space before curly bracket on line #{line_number + 1}" unless line.match(/[[:space:]]\{/)
  end

  def indentation_scan(line, line_number)
    num_of_spaces_found = line[/\A */].size
    unless num_of_spaces_found == 2
      "Inconsistent indentation detected.
      \nExpected 2, but found #{num_of_spaces_found}
      spaces instead on line #{line_number + 1}."
    end
  end
end
