def echo(string)
  string
end

def shout(string) 
  string.upcase
end

def repeat(string, num = 2)
  ([string] * num).join(" ")
end

def start_of_word(string, num)
  string[0, num]
end

def first_word(string)
  string.split.first
end

def titleize(string)
  words_array = string.split.map do | word |
    if ["the", "and", "over"].include?(word)
	    word
	  else
	    word.capitalize
	  end
  end
  words_array[0].capitalize!
  words_array.join(" ")
end

