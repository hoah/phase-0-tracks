# write a method that takes a spy's real name and creates a fake name with it
# by doing the following:
# Swapping the first and last name.
# Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', 
# and all of the consonants (everything else besides the vowels) to the next
# consonant in the vowel. So 'a' would become 'e', 'u' would become 'a', and 
# 'd' would become 'f'.





# Creates the agents new alias
def fake_name (real_name)
		# Split string into array of first and last name. Swapping the first and last name.
		new_name = real_name.split(' ').reverse		

		# Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou'
		first_name = new_name[0].downcase.gsub(/[aeiou]/, 'a' => 'e', 'e' => 'i',
		 'i' => 'o', 'o' => 'u', 'u' => 'a')

		# all of the consonants to the next consonant in the vowel.
		new_name[0] = first_name.downcase.gsub(/[^aeiou]/, 'b'=> 'c', 'c' => 'd','d'=> 'f',
		 'f' => 'g','g'=> 'h', 'h' => 'j','j'=> 'k', 'k' => 'l','l'=> 'm',
		  'm' => 'n','n'=> 'p', 'p' => 'q','q'=> 'r', 'r' => 's','s'=> 't',
		   't' => 'v','v'=> 'w', 'w' => 'x','x'=> 'y', 'y' => 'z','z'=> 'b')




		# Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou'
		last_name = new_name[1].downcase.gsub(/[aeiou]/, 'a' => 'e', 'e' => 'i',
		 'i' => 'o', 'o' => 'u', 'u' => 'a')

		# all of the consonants to the next consonant in the vowel.
		new_name[1] = last_name.downcase.gsub(/[^aeiou]/, 'b'=> 'c', 'c' => 'd','d'=> 'f',
		 'f' => 'g','g'=> 'h', 'h' => 'j','j'=> 'k', 'k' => 'l','l'=> 'm',
		  'm' => 'n','n'=> 'p', 'p' => 'q','q'=> 'r', 'r' => 's','s'=> 't',
		   't' => 'v','v'=> 'w', 'w' => 'x','x'=> 'y', 'y' => 'z','z'=> 'b')

		new_name[0].capitalize!
		new_name[1].capitalize!
		resulting_name = new_name[0] + " " + new_name[1]

end

agent_name = nil
agent_list = {}

while agent_name != "quit"

	puts "What is your name? type quit to stop."
	agent_name = gets.chomp

	break if agent_name == "quit"

	resulting_name = fake_name(agent_name)

	puts "Agent #{agent_name} your name is now #{resulting_name}"

	# hash database of kickass agents!
	agent_list[agent_name] = resulting_name
end

agent_list.each {|key, value| puts "#{key} is also known as #{value}"}