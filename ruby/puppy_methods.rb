class Puppy

 def initialize
     puts "Initializing new puppy instance..."
 end

 def fetch(toy)
   puts "I brought back the #{toy}!"
   toy
 end

 def speak (integer)
    puts "Woof! "*integer
 end

 def roll_over
     puts "*Roll over*"
 end

 def dog_years(num_year)
     num_year / 7      
 end

 def give_paw
     puts "Sticks out paw to shake"
 end

end

madison = Puppy.new
madison.fetch("ball")
madison.speak(7)
madison.roll_over
madison.dog_years(14)
madison.give_paw



#############################################################################


class Kittens

 def initialize
     puts "Initializing new kitten instance"
 end

 def be_cute
     puts "Gives big eyes."
 end

 def play(toy)
     puts "Plays with #{toy}"
 end

end

kittens = []

50.times do |i|
    kittens <<  Kittens.new
end

kittens.each do |kitten|
    kitten.be_cute
    kitten.play("furry toy")
end