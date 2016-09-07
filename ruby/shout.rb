=begin

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

=end


module Shout

  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
    words + " yeah" + " ;)"
  end

end

class Man
  include Shout
end

class Woman
  include Shout
end


# driver code

dave = Man.new
sara = Woman.new

puts dave.yell_angrily("What the hell")
puts dave.yelling_happily("Go Dallas Cowboys")
puts sara.yell_angrily("You said I look fat")
puts sara.yelling_happily("Go women's soccer")