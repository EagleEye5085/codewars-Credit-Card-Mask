require "pry"

class Mask

  attr_reader :rawstring, :newstring
  def initialize(string)
    @rawstring = string
    @newstring = encrypt
  end

  def encrypt
    # binding.pry
    num = ((rawstring.length)-4)
    obscuredcharacters = ""
    num.times {obscuredcharacters << "#"}
    tempstring = rawstring
    tempstring[0...-4] = obscuredcharacters
    tempstring
  end

end

mask = Mask.new("billy is great helping me 1234")

puts mask.rawstring
puts mask.newstring
