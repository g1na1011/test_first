class Book
  
  def initialize
    @title
  end

  def title
    @title
  end

  def title=(name)
    words_array = name.split.map do | word |
      if %w(the a an and but or yet for nor so in of).include?(word)
        word
      else
        word.capitalize
      end
    end
    words_array.first.capitalize!
    @title = words_array.join(" ")
  end
end