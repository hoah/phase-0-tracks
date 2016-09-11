require_relative 'word_guessing_game'

describe WordGuess do
  let(:game) { WordGuess.new("hello") }
  
  it "stores the list items given on initialization" do
    expect(game.display_guess).to eq "_____"
  end

  it "checks for word match" do
    game.check_word("hello")
    expect(game.is_over).to eq true
  end

  it "checks for leter match" do
    game.check_letter("h")
    expect(game.display_guess).to eq "h____"
  end


end