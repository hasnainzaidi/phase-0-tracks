puts "What is your name?"
name = gets.chomp

puts "How old are you? (years)"
age = gets.chomp.to_i

puts "What year were you born?"
birth_year = gets.chomp.to_i

calc_age = Time.now.year - birth_year
age_valid = calc_age == age || calc_age == (age + 1)

puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes / no)"
garlic_bread = gets.chomp.downcase
case garlic_bread
  when "y", "yes"
    eats_garlic = true
  when "n", "no"
    eats_garlic = false
end

puts "Would you like to enroll in the company’s health insurance?"
insurance = gets.chomp
case insurance
  when "y", "yes"
    wants_insurance = true
  when "n", "no"
    wants_insurance = false
end

##if age_valid && (eats_garlic || wants_insurance)
##  puts "Probably not a vampire."
##elsif !age_valid && !(eats_garlic || wants_insurance)
##  puts "Almost certainly a vampire."
##elsif !age_valid && !(eats_garlic && wants_insurance)
##  puts "Probably a vampire."
##end

case name
when "Drake Cula", "Tu Fang"
  puts "Definitely a vampire."
end