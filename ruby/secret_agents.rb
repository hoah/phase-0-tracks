# advance every letter of a string one letter forward.
# "abc" becomes "bcd"



def encrypt (password)
  index = 0
  while index < password.length
    # change out one letter at a time in string, then advance to next letter.
    if password[index] == " "
    	password[index] = " "
    elsif
    	password[index] != "z"
	    password[index] = password[index].next
	elsif password[index] == "z"
		password[index] = "a"  # special edge case when advancing from  z to a
	end
	 index += 1
  end
  p password
end


# get the first character of the password string
# find the index position in the alphabet
# assign the chracter its index position in the alphabet -1

def decrypt (password)
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	alphabet_index = 0
	password_index = 0
	while password_index < password.length
		if alphabet[alphabet_index] == password[password_index]
			password[password_index] = alphabet[(alphabet_index - 1)]
			password_index += 1		# advance to next letter in password string
			alphabet_index = 0		# reset index for next iteration
		elsif password[password_index] == " "
			password[password_index] = " "
			password_index += 1		# advance to next letter in password string
			alphabet_index = 0		# reset index for next iteration
		else
			alphabet_index += 1		# advance to next letter in alphabet string
		end
	end
	p password
end



#encrypt("abc")
#encrypt("zed")
#encrypt("z    z")
#decrypt("bcd")
#decrypt("afe")
#decrypt("a   a")

# this demonstrates the output of one method can be the input of another
#decrypt(encrypt("swordfish"))

# Asks a secret agent (the user) whether they would like to decrypt or encrypt a password
puts "Would you like to decrypt or encrypt a password?"
agent_choice = gets.chomp
	

# Asks them for the password
puts "Please enter a password"
password = gets.chomp

# Conducts the requested operation, prints the result to the screen, and exits
if agent_choice == "decrypt"
	decrypt(password)
else
	encrypt(password)
end