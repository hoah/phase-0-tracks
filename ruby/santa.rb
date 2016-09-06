class Santa

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
  end

  @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  @age = 0

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

  def about
    puts "This Santa is #{@gender} and #{@ethnicity}"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking = @reindeer_ranking.delete(reindeer_name).push(reindeer_name)
    puts "New reindeer ranking is #{@reindeer_ranking}"
  end

  # getter methods
  def gender
    @gender
  end

  def ethnicity
    @ethnicity
  end

  # setter methods
  def gender=(new_gender)
    @gender = new_gender
  end

end

# billy_bob = Santa.new

# billy_bob.speak
# billy_bob.eat_milk_and_cookies("snickerdoodle")


santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

santas.each do |person|
  puts "This Santa is #{person.gender} and #{person.ethnicity}"
end

# santas[0].get_mad_at("Rudolph")