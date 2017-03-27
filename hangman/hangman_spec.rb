require_relative 'hangman'

describe Word_game do

  let(:word) { Word_game.new("banana") }

# Track letters being guessed
  it "tracks letters already guessed" do
    word.compare("b")
    word.compare("z")
    word.compare("x")
    expect(word.letters_guessed).to eq ["b", "z", "x"]
  end

# Check letter vs. archive: already guessed
  it "rejects letters that have already been tried" do
    word.compare("b")
    word.compare("z")
    word.compare("x")
    expect(word.compare("b")).to eq (false)
  end

# Check letter vs. archive: new letter
  it "allows letters that have not been tried yet" do
    word.compare("b")
    word.compare("z")
    word.compare("x")
    expect(word.compare("e")).to eq (true)
  end

# Check letter vs. word: in word
  it "checks new letters (in word)" do
    expect(word.check("b")).to eq (true)
  end

# Check letter vs. word: not in word
  it "checks new letters (not in word)" do
    expect(word.check("x")).to eq (false)
  end

end
