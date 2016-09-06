class Puppy

  def initialize
    puts "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
    num.times {puts "Woof!"}
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(num)
    num * 5
  end

  def sit
    puts "*sitting*"
  end

end


my_puppy = Puppy.new

my_puppy.fetch("ball")

my_puppy.speak(5)

my_puppy.roll_over

puts "My dog will be 3 years old, that's #{my_puppy.dog_years(3)} in dog years!"

my_puppy.sit



class Cat

  def initialize
    puts "Initializing new cat instance..."
  end

  def flip
    puts "*flip*"
  end

  def jump
    puts "*jump*"
  end

end


my_cat = []
# create 50 instances of my_cat and stored in array
50.times do |i|
  my_cat[i] = Cat.new
end

# iterated through my_cat array and called flip and jump methods
my_cat.each do |feline|
  feline.flip
  feline.jump
end