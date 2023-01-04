require "pry"

class Mask

  attr_reader :rawstring, :newstring
  def initialize(string)
    @rawstring = string
    @tempstring = string
    @newstring = encrypt
  end

  def encrypt
    num = ((@tempstring.length)-4)
    obscuredcharacters = ""
    num.times {obscuredcharacters << "#"}
    @tempstring[0...-4] = obscuredcharacters
    @tempstring
  end

end

mask = Mask.new("billy is great helping me 1234")

# binding.pry

puts mask.newstring
