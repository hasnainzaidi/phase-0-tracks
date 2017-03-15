#create a hash clientDB = {}
clientDB = {}


#get user inputs and assign to hash
puts "What is the client's name?"
clientDB[:name] = gets.chomp

puts "What city is the client in?"
clientDB[:city] = gets.chomp

puts "How old is the client?"
clientDB[:age] = gets.chomp.to_i

puts "How many children does the client have?"
clientDB[:children] = gets.chomp.to_i

puts "What is the client's household income?"
clientDB[:income] = gets.chomp.to_i

puts "What is the decor theme?"
clientDB[:decor] = gets.chomp

#Run conditional to convert strings to boolean
puts "Is this a residential project? (yes / no)"
if gets.chomp == "yes"
  clientDB[:residential] = true
else
  clientDB[:residential] = false
end

puts "Is this a commercial project? (yes / no)"
if gets.chomp == "yes"
  clientDB[:commercial] = true
else
  clientDB[:commercial] = false
end

#Display the values in the hash
puts "Here is the client summary:"
puts clientDB

#Ask user if they would like to make any edits
puts "What field would you like to edit? (type none to quit)"
edit_field = gets.chomp.to_sym

puts "What is the updated value?"
new_value = gets.chomp

#Convert the updated value to the correct data type and update hash
if (edit_field == :age) || (edit_field == :children)
  clientDB[edit_field] = new_value.to_i
elsif edit_field == :residential
  if new_value == "yes"
    clientDB[edit_field] = true
  else
    clientDB[edit_field] = false
  end
elsif edit_field == :commercial
  if new_value == "yes"
    clientDB[edit_field] = true
  else
    clientDB[edit_field] = false
  end
else clientDB[edit_field] = new_value
end

#Display the updated values in the hash
puts "Here is the updated client summary:"
puts clientDB