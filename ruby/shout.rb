
module Shout

#  def self.yell_angrily(words)
#    words + "!!!" + " :("
#  end
#
#  def self.yell_happily(words)
#    words.upcase + "!!!" + " :D"
#  end

  def yell_angrily(words)
    words.upcase + "!!!" + " :("
  end

  def yell_happily(words)
    words.upcase + "!!!" + " :D"
  end

end

#p Shout.yell_angrily("you suck")
#p Shout.yell_happily("but I love you anyway")

class Drunk
  include Shout
end

class Emotional
  include Shout
end

buddy = Drunk.new
puts buddy.yell_happily("i'm the king of the world")

grumpy = Emotional.new
puts grumpy.yell_angrily("you guys need to keep the noise down")
