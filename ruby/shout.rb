module Shout

  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
    words.upcase + "!!!" + " :D"
  end

end

p Shout.yell_angrily("you suck")
p Shout.yell_happily("but I love you anyway")