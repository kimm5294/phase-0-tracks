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