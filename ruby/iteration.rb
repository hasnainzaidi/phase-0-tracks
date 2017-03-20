=begin
letters = ["a", "b", "c", "d", "e"]
new_letters =[]

puts "Original date:"
p letters

letters.map! do |letter|
  letter = letter.next
end 

puts "After .each call:"
p letters
p new_letters
=end


grocery_list = ["apples", "oranges", "bananas"]

fav_dish = {
  apples: 'apple pie',
  oranges: 'orange juice',
  bananas: 'banana bread'
}

grocery_list.each do |fruits|
  puts "Honey, can you please pick up some #{fruits} at the store?"
end 

fav_dish.each do |ingredient, dish|
  puts "We'll use the #{ingredient} for the #{dish}!"
end

grocery_list.map! do |fruits|
  if fruits == "oranges"
    fruits = "mandarin oranges"
  end
  fruits
end

grocery_list.each do |fruits|
  puts "Honey, can you please pick up some #{fruits} at the store?"
end 


num_array = [1, 5, 9, 0, 8, 15]
new_array = []
bball_roster  = {
  "PG" => "Tyus Jones",
  "G1" => "Grayson Allen",
  "G2" => "Matt Jones",
  "SF" => "Justise Winslow",
  "F" => "Jahlil Okafor"
}

#p num_array
#num_array.delete_if {|number| number < 5 }
#p num_array

#p bball_roster
#bball_roster.delete_if {|position, player| position == "F"}
#p bball_roster

#p num_array
#num_array.keep_if {|number| number < 6}
#p num_array

#p bball_roster
#bball_roster.keep_if {|position, player| position == "F"}
#p bball_roster

#p num_array
#num_array.select! {|number| number < 6 }
#p num_array

p bball_roster
bball_roster.select! {|position, player| position == "F"}
p bball_roster

p new_array
new_array = num_array.take_while {|number| number < 6 }
p new_array


