# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#
#   def self.yelling_happily (words)
#     words + "!" + " :))"
#   end
# end
#
# p Shout.yell_angrily("Ughhhh")
# p Shout.yelling_happily("I did it")

# Mixin module
module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily (words)
    words + "!" + " :))"
  end
end

class Referee
  include Shout
end

class Team
  include Shout
end

referee=Referee.new
p referee.yell_angrily("You'r out")

team=Team.new
p team.yelling_happily("We are the champions")
Status API Training Shop Blog About
