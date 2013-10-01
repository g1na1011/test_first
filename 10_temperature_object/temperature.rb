class Temperature
  attr_accessor :options

  def initialize(options = {})
    @options = options 
  end

  def in_fahrenheit
  	if @options.has_key?(:c)
  	  (@options[:c] * 9.0) / 5.0 + 32.0
  	else
  	  @options[:f]
    end
  end

  def in_celsius
    if @options.has_key?(:f)
      (@options[:f] - 32.0) * 5.0 / 9.0 
    else
      @options[:c]
    end
  end

  def self.from_celsius(degree)
    Temperature.new(:c => degree)
  end

  def self.from_fahrenheit(degree)
  	Temperature.new(:f => degree)
  end

  def ftoc(f)
    (f-32.0) * (5.0/9.0)
  end

  def ctof(c)
    c * (9.0/5.0) + 32.0
  end

end

class Celsius < Temperature
  def initialize(degree)
    super(:c => degree)
  end
end

class Fahrenheit < Temperature
  def initialize(degree)
    super(:f => degree)
  end
end