#This method will replace vowels with the next occurring vowel
def next_vowel(letter)
  vowels = ["a","e","i","o","u"]

  if letter == "u"
    then return "a"
    else return vowels[vowels.index(letter) + 1]
  end
end

#This method will replace consonants with the next occurring consonant
def next_consonant(letter)
  if letter == "z" 
    then 
      return "a"
    elsif letter.match(/[dhnt]/) == nil
      return (letter.ord + 1).chr
    else 
      return (letter.ord + 2).chr
  end
end

#This method will take an array and replace letters with code letters
def rejigger(array)
  new_array = []

  array.each {|letter|
    if letter.match(/[aeiou]/) == nil 
      new_array << next_consonant(letter)
    else
      new_array << next_vowel(letter)
    end
  }

  return new_array
end

dossier = {}
# Driver code goes here
loop do
  puts "What is the full real name? Type 'quit' to exit"
  real_name = gets.chomp
  break if real_name == "quit"

#This method will convert a name into an array of components
#name_array splits the full name into its elements
name_array = real_name.downcase.split(' ')
first_name = name_array[0]
last_name = name_array[1]

#first_array and last_array contain the letters within each name
#consider nesting into name_array
first_array = first_name.split('')
last_array = last_name.split('')

# Call the rejigger methods to convert the name arrays
newfirst_array = rejigger(first_array)
newlast_array = rejigger(last_array)

#Combine the rejiggered arrays into a new code name
code_first = newlast_array.join('').capitalize
code_last = newfirst_array.join('').capitalize
code_name = code_first + " " + code_last

puts code_name
dossier [real_name] = code_name
end

puts ""
puts "The full spy list is:"
puts
dossier.each {|real, code|
  puts "#{code} is actually #{real.capitalize}"
}