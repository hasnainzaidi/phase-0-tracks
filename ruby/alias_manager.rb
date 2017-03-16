real_name = "Hasnain Zaidi"

#Split the first name and last name
name_array = real_name.split(' ')
first_name = name_array[0]
last_name = name_array[1]

#Split each name into an array of letters
first_array = first_name.split('')
last_array = last_name.split('')

#Cycle through each element in the array
new_first = first_array.map! {|letter| letter.next}
new_last = last_array.map! {|letter| letter.next}

#if the element is a vowel, call the vowel method
if "b".match(/[aeiou]/) == nil 
  then puts "consonant" 
  else puts "vowel"
end
#if the element is a consonant, call the consonant method

#This method will replace vowels with the next occurring vowel
#This method will replace consonants with the next occurring consonant

#This method will combine an array into a word (.join)
code_first = last_array.join('')
code_last = first_array.join('')

puts code_first
puts code_last

