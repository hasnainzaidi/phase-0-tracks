class Santa
  attr_accessor :name, :gender, :ethnicity, :reinder_ranking, :age

  def initialize(gender, ethnicity)
    puts "Initializing new Santa instance..."
    #@name = name
    @gender = gender
    @ethnicity = ethnicity
    @reinder_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end
  
  def speak()
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  eat_milk_and_cookies
    end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at=(reindeer)
    @reinder_ranking.delete(reindeer.to_s)
    @reinder_ranking.push(reindeer.to_s)
  end

end



#Test that the methods work:
#kris = Santa.new("Kris", "Male", "Black")
#kris.speak
#kris.eat_milk_and_cookies("sugar cookie")

=begin 
#Test getter and setter methods:
puts kris.age
puts kris.gender
p kris.reinder_ranking

kris.celebrate_birthday
puts kris.age

kris.gender=("Exploring")
p kris.gender

kris.get_mad_at=("Dasher")
p kris.reinder_ranking
=end

#Initialize diverse Santas

santas = []
#starting_names = ["John", "Jacob", "Jingle", "Jenny"]
starting_gender = ["Male", "N/A", "Bigender", "Female"]
starting_ethnicities = ["Asian", "Latino", "Mixed", "Black"]
age_range = 0..140

10.times do |i|
  puts "-"*10
  santas << Santa.new(starting_gender.sample, starting_ethnicities.sample)
  santas[i].age = age_range.to_a.sample
  puts santas[i].gender
  puts santas[i].ethnicity
  puts "Age: #{santas[i].age}"
end

#puts santas


