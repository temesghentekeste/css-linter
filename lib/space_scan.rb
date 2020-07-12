require 'byebug'
class SpaceScanner
  def last_line_scan(lines)
    return 'trailing blank lines detected.' if lines[-1] == "\n" and lines[-2] == "\n"
    return 'final newline messing.' unless lines.last.include? "\n"
  end
end