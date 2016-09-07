module Shout

  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words + " yeah" + " ;)"
  end

end


puts Shout.yell_angrily("F ing hell")
puts Shout.yelling_happily("Thank you")