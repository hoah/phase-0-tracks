#hoa and collin pair project
#the hamsters name.
#how loud the hamster is 1-10.
#fur color.
#good candidate for adoption.
#age roughly.

puts 'What is the hamsters name?'
name = gets.chomp

puts 'How loud is the hamster from 1 to 10?'
volume_level = gets.chomp.to_i

puts 'What is the fur color?'
fur_color = gets.chomp

puts 'Are they a good candidate for adoption?'
good_candidate = gets.chomp

puts 'What is the hamsters age?'
age = gets.chomp.to_i

if age == ''
    age == nil
end

puts "Hamster #{name} has a volume level of #{volume_level} and has a fur color of #{fur_color}, also I suggest that it is a #{good_candidate} for adoption and its age is roughly #{age}."