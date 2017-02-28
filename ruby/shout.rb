#Old code before converting to a Mixin
=begin 
module Shout

  def self.yell_angrily(words)
    words +"!!!" + " :("
  end 

  def self.yell_happily(words)
    words + ", yay!" + " :D"
  end 

end 

puts Shout.yell_angrily("NOOO")
puts Shout.yell_happily("Yippee")
=end 

#New Code converting Standalone Module to a Mixin
module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end 

  def yell_happily(words)
    words + ", yay!" + " :D"
  end 
end 

#Classes
class Parents
  include Shout
end 

class Boss
  include Shout
end 

#Driver Code
mom = Parents.new
puts mom.yell_happily("Welcome home")

michael_scott = Boss.new
puts michael_scott.yell_angrily("Dwight, you suck")