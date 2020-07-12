require 'byebug'
class SpaceScanner
  def last_line_scan(lines)
    return 'trailing blank lines detected.' if lines[-1] == "\n" and lines[-2] == "\n"
    return 'final newline messing.' unless lines.last.include? "\n"
  end

  def trailing_space_scan(line, i)
    "trailing space found on line #{i + 1}." if line.end_with?("; \n")
  end

  def space_before_curly_bracket_scan(line, i)
    "there should be a space before curly bracket on line #{i + 1}" unless line.match(/[[:space:]]\{/) 
  end
end
