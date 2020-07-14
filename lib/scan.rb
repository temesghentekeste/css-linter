require_relative 'formatter'
class Scan
  def initialize(errory_type)
    formatter = Formatter.new
    @error_type = formatter.format_error_type(errory_type)
  end
end