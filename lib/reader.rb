class Reader 
  attr_reader :buffer_arr
  def initialize(file)
    @buffer_arr =  File.open(file).to_a
  end
end