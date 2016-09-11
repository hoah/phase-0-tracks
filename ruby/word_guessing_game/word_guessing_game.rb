=begin

Create a class that will take a word for input, used for the target word to guess.
  
  Allow access outside of class to instance variables
    attr_reader and attr_accessor

  Create a initializing method to accept the word
    Store word in instance variable

  Keep track of number of guesses left.

  Loop through guesses, number of guesses is length of word
    IF guess is repeated, does not count.

  Provide continual feedback by
    Displaying "_ _ _ _ _ _ _"
    Change to  "_ _ _ c _ _ _" when guess input matches

  IF word is guessed before available guesses is zero
    Display winning message
  ELSE
    Display losing message

END

=end

# game class

class WordGuess
  attr_reader :is_over, :guess_count, :display_guess, :target_word
  
  def initialize(new_word)
    @is_over = false
    @target_word = new_word
    @guess_count = new_word.length
    @display_guess = ""
    
    word_index = 0
    while word_index < new_word.length      # set display_guess to string of '_'
      @display_guess[word_index] = '_'
      word_index += 1
    end
  end

  def check_word(guess_word)
    @guess_count -= 1
    if guess_word == @target_word
      @is_over = true
    end
  end

  def check_letter(letter)
    word_index = 0
    
    if @display_guess.include?(letter)      # check for repeat of letter guess, does not count against
      puts "You already guessed \"#{letter}\". Please guess again."
    elsif @target_word.include?(letter)

      while word_index < @target_word.length  # check for matching letter in target, insert letter for display
        if @target_word[word_index] == letter
          @display_guess[word_index] = letter
          word_index += 1
        else
          word_index += 1
        end
      end

      @guess_count -= 1
    else
      @guess_count -= 1
    end

  end

  def print_guess
    puts "Here is what you have guessed so far."
    @display_guess.each_char { |c| print c, ' '}
    puts
  end

end

# user interface

puts "Welcome to the Word Guessing Game!"
puts "Please enter a word for your opponent to guess."

game = WordGuess.new(gets.chomp)

while game.guess_count > 0 && !game.is_over
  puts "You have a word that is #{game.target_word.length} letters long."
  puts "You have #{game.guess_count} guesses left."
  puts "Please enter your guess of a letter (a-z) or type \"guess\" if you think you know what the word is."

  letter_guess = gets.chomp

  if letter_guess == "guess"
    puts "Please enter your word."

    if game.check_word(gets.chomp)
      puts "Good work! You got the right word!"
    else
      puts "Please try again."
      game.print_guess
    end

  else
    game.check_letter(letter_guess)
    game.print_guess
  end
end

if game.guess_count == 0 && !game.is_over
  puts "Sorry you lose, better luck next time!"
end