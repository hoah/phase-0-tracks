# 4.4 Solo Challenge: Control Flow Practice
# Interviewing with the Vampire

current_year = 2016
allergies = nil


puts "How many new employees will you process today?"
number_of_emplyees = gets.chomp.to_i

while number_of_emplyees > 0

	puts "What is your name?"
	name = gets.chomp

	puts "How old are you?"
	age = gets.chomp.to_i

	puts "What year were you born?"
	year_born = gets.chomp.to_i
	if ((current_year - year_born) == age)
		right_age = true
	else
		right_age = false
	end

	puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
	garlic_bread = gets.chomp
	if garlic_bread == "y"
		likes_garlic = true
	else
		likes_garlic = false
	end

	puts "Would you like to enroll in the company's health insurance? (y/n)"
	health_insurance = gets.chomp
	if health_insurance == "y"
		wants_insurance = true
	else
		wants_insurance = false
	end


	puts "List any allergies you have one at a time. Type done when finished"
	until allergies == "done"
		allergies = gets.chomp
		if allergies == "sunshine"
			break puts "Probably a vampire"
		end
	end



	if allergies != "sunshine"
		if (name == "Drake Cula" || name == "Tu Fang")
			puts "Definitely a vampire"
		elsif right_age && (likes_garlic || wants_insurance)
			puts "Probably not a vampire"
		elsif !(right_age) && (likes_garlic || wants_insurance)
			puts "Probably a vampire"
		elsif !(right_age) && !(likes_garlic) && !(wants_insurance)
			puts "Almost certainly a vampire"
		else
			puts "Results inconclusive"
		end
	end

	number_of_emplyees -= 1
	puts "#{number_of_emplyees} left to go!"
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."