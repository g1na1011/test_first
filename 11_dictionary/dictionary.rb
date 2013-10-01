class Dictionary 
  attr_accessor :d

  def initialize
    @d = {}
  end

  def entries
  	@d
  end

  def add(keyword_definition)
  	if keyword_definition.is_a? String
  	  @d[keyword_definition] = nil
  	else
      @d.merge!(keyword_definition)
    end
  end

  def keywords
  	@d.keys.sort
  end

  def include?(keyword)
    @d.has_key?(keyword)
  end

  def find(keyword)
  	if @d.empty?
      @d = {}
  	else
  	  @d.select do | k,v | 
        k.include?(keyword)
      end
    end
  end

  def printable
  	@d.sort.map do | k, v | 
  	  %Q{[#{k}] "#{v}"} 
  	end.join("\n")
  end
  
end