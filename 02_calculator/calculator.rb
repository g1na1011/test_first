def add(num1,num2)
	num1 + num2 
end

def subtract(num1,num2)
  num1 - num2
end

def sum(array)
  array.reduce(0) do | total, num | 
    total += num 
  end
end

def multiply(*num)
  num.reduce do | total, number | 
    total * number
  end
end

def power(num1,num2)
  num1 ** num2
end

def factorial(num)
  if num == 0 
    1
  else
    num * factorial(num - 1)
  end
end


