def reverser 
  yield.split.map do | word | 
  	word.reverse
  end.join(" ")
end

def adder(value = 1)
  yield + value
end

def repeater(num = 1)
  num.times do
  	yield
  end
end

