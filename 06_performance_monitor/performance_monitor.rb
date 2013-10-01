def measure(num = 1)
  elapsed_time = 0

  num.times do
  	start_time = Time.now
    yield
    end_time = Time.now
    elapsed_time += end_time - start_time
  end

  average_time = elapsed_time / num
end