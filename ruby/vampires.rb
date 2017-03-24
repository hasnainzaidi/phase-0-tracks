puts "How many employees will be processed?"
enrollees = gets.chomp.to_i

counter = 1

while counter <= enrollees

  puts "What is the name of candidate #{counter}?"
  name = gets.chomp

  puts "How old is candidate #{counter}? (years)"
  age = gets.chomp.to_i

  puts "What year was (s)he born?"
  birth_year = gets.chomp.to_i

  calc_age = Time.now.year - birth_year
  age_valid = calc_age == age || calc_age == (age + 1)

  puts "Our company cafeteria serves garlic bread. Should we order some for him/her? (yes / no)"
  garlic_bread = gets.chomp.downcase
  case garlic_bread
    when "y", "yes"
      eats_garlic = true
    when "n", "no"
      eats_garlic = false
  end

  puts "Would candidate #{counter} like to enroll in the company’s health insurance?"
  insurance = gets.chomp
  case insurance
    when "y", "yes"
      wants_insurance = true
    when "n", "no"
      wants_insurance = false
  end

  if loop do
    puts "Please list your allergies one at at time (type 'done' when complete)"
    allergy = gets.chomp
    break true if allergy == "sunshine"
    break false if allergy == "done"
  end
    fear_sun = true
  else
    fear_sun = false
  end

  vampire_status = "Results inconclusive."

  if age_valid && (eats_garlic || wants_insurance)
    vampire_status = "Probably not"
  end

  if fear_sun || (!age_valid && !(eats_garlic || wants_insurance))
    vampire_status = "Probably"
  end

  if !age_valid && !(eats_garlic && wants_insurance)
    vampire_status = "Almost certainly"
  end

  case name
  when "Drake Cula", "Tu Fang"
    vampire_status = "Definitely"
  end
  
  if vampire_status == "Results inconclusive."
    puts "Status: #{vampire_status}"
  else
    puts "Status: #{vampire_status} a vampire."
  end

  puts "--"
  puts ""

  counter += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."