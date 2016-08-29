#Partner : Hoa Huynh Github ID : hoah


##############################
def numbers
 puts " We will add numbers together"
 yield(2, 5)
end
numbers do|x,y|
# puts x + y 
puts "#{x} and #{y} are added to get #{x+y}"
end
###################################


pets = {
	'cat' => 5,
	'dog' => 2,
	'snake' => 1,
}
puts "Original hash"
puts pets

letters = ['a', 'b', 'c', 'd', 'e']

puts "Original array"
p letters

puts "After .each on hash"

pets.each do |animal, amount|
	puts amount
	end

puts "After .each on array"
letters.each do |letter|
	puts letter

	end

puts "After .map! on array"
letters.map! do |letter|
	letter.next
end
p letters
#############################################



pets = {
	'cat' => 5,
	'dog' => 2,
	'snake' => 1,
	'birds' => 10
}
puts "Original hash"
p pets


numbers= [2,4,6,8,10 ] 
puts "Original array"
p numbers


numbers.delete_if do |num|
	num < 8
end
puts" The new array"
p numbers
	
pets.delete_if do |animal, amount|
	amount < 5
end
puts" The new hash"
p pets

numbers.keep_if do |num|
	num < 8
end
puts" The new array"
p numbers

pets.keep_if do |animal, amount|
	amount < 5
end
puts" The new hash"
p pets


numbers.select! do |num|
	num < 8
end
puts" The new array"
p numbers

pets.select! do |animal, amount|
	amount < 5
end
puts" The new hash"
p pets

new_numbers = []

new_numbers = numbers.drop_while do |num|
	  num < 8
end
puts" The new array"
p new_numbers

new_pets = pets.drop_while do |animal, amount|
	 amount < 5
end
puts" The new hash"
p new_pets