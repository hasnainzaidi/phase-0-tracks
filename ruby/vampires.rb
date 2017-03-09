puts "What is your name?"
name = gets.chomp

puts "How old are you? (years)"
age = gets.chomp.to_i

puts "What year were you born?"
birth_year = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes / no)"
garlic_bread = gets.chomp

puts "Would you like to enroll in the company’s health insurance?"
insurance = gets.chomp

puts "#{name} is #{age} years old (year of birth: #{birth_year}). #{garlic_bread}! to garlic bread. #{insurance} to health insurance."