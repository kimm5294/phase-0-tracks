require_relative "games"

describe Game do 
  let(:game1) { Game.new("hello world!") }
  let(:guessing_array) {[]}
  
  it "store input into split array" do 
    expect(game1.store_input).to eq ["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d", "!"]
  end 

  it "create array of _ that cover real word" do 
    expect(game1.start_game(game1.store_input, guessing_array)).to eq ["_", "_", "_", "_", "_", " ", "_", "_", "_", "_", "_", "!"]
  end 

  it "guessing letters in array and show if right" do
    expect(game1.guess_letter("l", ["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d", "!"], ["_", "_", "_", "_", "_", " ", "_", "_", "_", "_", "_", "!"])).to eq ["_", "_", "l", "l", "_", " ", "_", "_", "_", "l", "_", "!"]
  end 

  it "guessing letters in array and don't show if wrong" do
    expect(game1.guess_letter("z", ["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d", "!"], ["_", "_", "_", "_", "_", " ", "_", "_", "_", "_", "_", "!"])).to eq ["_", "_", "_", "_", "_", " ", "_", "_", "_", "_", "_", "!"]
  end 

  it "tells if game is over because user won" do 
    expect(game1.game_over(["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d", "!"], ["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d", "!"])).to eq true
  end 

  it "test to see if number of guesses only takes into account the letters" do 
    expect(game1.number_guesses(["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d", "!"], 0)).to eq 15
  end 

  it "test to see if it will come true if you already guessed letter" do 
    expect(game1.guessed_already("l", ["l", "m"])).to eq true
  end 

  it "test to see if it will come false if you didn't already guess letter" do 
    expect(game1.guessed_already("l", ["m"])).to eq false
  end 

  it "add guesses to guessed already array" do
    expect(game1.add_to_user_guesses("l", [])).to eq ["l"]
  end 

end 