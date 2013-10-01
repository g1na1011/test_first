class RPNCalculator
  attr_accessor :calculator

  def initialize
  	@calculator = Array.new
  	@final_sum
  	@sum
  end

  def push(number)
  	@calculator.push(number.to_f)
  end

  def plus
  	if @calculator.length == 0
  	  raise "calculator is empty"
  	elsif @calculator.length == 1
  	  @final_sum = @sum + @calculator.first
  	  @calculator.pop
  	else
  	  @sum = @calculator.last + @calculator[@calculator.length - 2]
  	  @calculator.pop(2)
  	end
  end

  def minus
  	if @calculator.length == 0
  	  raise "calculator is empty"
  	else
      @sum = @calculator[@calculator.length - 2] - @calculator.last
  	  @calculator.pop(2)
  	end
  end

  def divide
  	if @calculator.length == 0
  	  raise "calculator is empty"
  	else
   	  @sum = @calculator[@calculator.length - 2] / @calculator.last
  	  @calculator.pop(2)
  	end
  end

  def times
  	if @calculator.length == 0
  	  raise "calculator is empty"
  	elsif @calculator.length == 1
  	  @final_sum = @sum * @calculator.first
  	  @calculator.pop
  	else
  	  @sum = @calculator[@calculator.length - 2] * @calculator.last
  	  @calculator.pop(2)
  	end
  end

  def value
    @final_sum || @sum
  end

  def tokens(string)
    string.split.map do | element |
      case element
        when "+", "-", "*", "/"
          element.to_sym
        else
      	  element.to_f
      end
    end
  end

  def evaluate(string)
    tokens(string).each do | element |
      case element
        when :+
          plus
        when :-
          minus
        when :*
          times
        when :/
          divide
        else
      	  push(element)
      end
    end
    value
  end
end