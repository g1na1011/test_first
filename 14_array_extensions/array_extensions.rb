class Array

  def sum
    self.reduce(0) do | total, num |
      total += num
    end
  end

  def square
  	self.map do | num |
  	  num ** 2
  	end
  end

  def square!
  	self.map! do | num |
  	  num ** 2
  	end
  end

end