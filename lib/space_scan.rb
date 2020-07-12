require 'byebug'
class SpaceScanner

  def last_line_scan(lines)
    return 'trailing blank lines detected.' if lines[-1] == "\n" and lines[-2] == "\n"
    return 'final newline messing.' unless lines.last.include? "\n"
  end

  def trailing_space_scan(line, i)
    "Trailing space found on line #{i + 1}." if line.end_with?("; \n")
  end
end