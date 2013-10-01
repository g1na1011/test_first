class Timer
  attr_accessor :seconds

  def initialize(num_seconds = 0)
  	@seconds = num_seconds
  end

  def time_string
  	hours = @seconds / 3600
  	mins = (@seconds % 3600) / 60
  	secs = (@seconds % 3600) % 60

  	sprintf("%02d:%02d:%02d", hours, mins, secs)	
  end

end