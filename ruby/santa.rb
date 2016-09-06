class Santa

  attr_reader :ethnicity
  attr_accessor :age, :gender

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)      #
    @reindeer_ranking.push(reindeer_name)        # move reindeer_name to end of array
    puts "New reindeer ranking is #{@reindeer_ranking}"
  end

end

# DRIVER CODE ############################

# billy_bob = Santa.new

# billy_bob.speak
# billy_bob.eat_milk_and_cookies("snickerdoodle")


santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
  santas[i].age = rand(140)             # randomize Santa's age
end

santas.each do |person|
  puts "This Santa is #{person.gender} and #{person.ethnicity} and #{person.age} years old"
end


# test re-ordering reindeer ranking
santas[0].get_mad_at("Rudolph")
santas[0].celebrate_birthday