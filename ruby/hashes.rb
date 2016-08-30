# Prompt the designer/user for all of this information.
# Convert any user input to the appropriate data type.


client_details = {}


puts "Please enter the client's name."
client_details[:name] = gets.chomp

puts "Please enter the client's age."
client_details[:age] = gets.chomp.to_i

puts "Please enter the client's number of children."
client_details[:num_children] = gets.chomp.to_i

puts "Please enter the client's decor theme."
client_details[:decor_theme] = gets.chomp



# Print the hash back out to the screen when the designer has answered all of the questions.
client_details.each{|key, value| puts "#{key} is #{value}"}


# Give the user the opportunity to update a key
puts "Would you like to update a key? (y/n)"
update_option = gets.chomp

if update_option == "y"
	puts "Which input key would you like to update?"
	update_key = gets.chomp.to_sym

	puts "What wold you like to change #{update_key} to?"
	client_details[update_key] = gets.chomp
else
	puts "Okay, thank you!"
end



# Print the latest version of the hash, and exit the program.
client_details.each{|key, value| puts "#{key} is #{value}"}