require 'io/console'

class Word_game
  attr_accessor :new_letter, :guess_count, :word, :word_array, :letters_guessed, :word_status, :continue

  def initialize (word)
    @word = word
    @letters_guessed = []
    @continue = true
    @word_array = word.chars
    @guess_count = 3 + word.length / 2
    @word_status = []
    @word_array.length.times { @word_status << "-" }

    puts "Ready player 1? Here you go!"
    puts "The word is: #{@word_status.join(" ")}"
    puts
  end

  def compare(letter)
    @new_letter = false
    if !letters_guessed.include?(letter)
      @letters_guessed  << letter
      @new_letter = true
    else
      puts "You've already used that letter. Try again."
    end
    @new_letter
  end

  def check(letter)
    @word_array.include?(letter)
  end

  def update_word(letter)
    if check(letter)
      @word_array.each_index do |i|
        if @word_array[i] == letter
          @word_status[i] = letter
        end
      end
    else
      @guess_count -= 1
    end

    if @guess_count == 0
      @loser = true
      @continue = false
    end

    if @word_status == @word_array
      @winner = true
      @continue = false
    end    

  end

  def status_print
    if @winner
      puts "You got it! The word was #{@word}."
      puts "You guessed it with #{@guess_count} lives to spare!"
      puts
      puts
    elsif @loser
      puts "You ran out of lives!" 
      puts "You got to #{@word_status.join(" ")}. The word was #{@word}."
      puts
      puts
    else
      puts "So far you have: #{@word_status.join(" ")}."
      puts "You have #{@guess_count} lives left"
      puts
      puts "~"*50
    end
  end


  def new_round
    
    while @continue do
      puts "Guess a letter: (type 'quit' to exit)"
      input = gets.chomp
      puts "~"*50
      if input == 'quit'
        puts "Thanks for playing. FYI the word was #{@word}."
        puts
        @continue = false
      else
        compare(input)
        if @new_letter
          check(input)
          update_word(input)
        end
        status_print
      end
    end
  end

end

# USER INTERFACE
dictionary = ["flannel", "banjo", "quinoa", "bicycle", "toast", "succulents" ]

puts "How many players? (input 1 or 2)"
players = gets.chomp.to_i

if players == 1
  word = dictionary.sample
else
  puts "Player 1, please enter the code word:"
  puts "(note: nothing will show on screen. Hit enter to submit."
  word = STDIN.noecho(&:gets).chomp
end

game1 = Word_game.new(word)
game1.new_round