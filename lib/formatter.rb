require 'colorize'
class Formatter
  
  def format(error_type)
    error_type = error_type.chomp.strip == 'Syntax error'.downcase ? error_type.colorize(:red) + ": " : error_type.colorize(:yellow) + ": "
  end
end