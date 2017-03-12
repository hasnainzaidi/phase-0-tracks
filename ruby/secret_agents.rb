def encrypt(word)
  index = 0 
  while index < word.length 
  if word[index]=="z"
    word[index] = "a"
  else
    word[index] = word[index].next
  end

  index += 1 
  end 
  word
end

def decrypt(word)
  index = 0 
 #secret_password[index] = "#{secret_password}"
  
 #letter = "abcdefghijklmnopqrstuvwxyz".index("#{secret_password[index]}") - 1
  
 alphabet = "abcdefghijklmnopqrstuvwxyz"
  while index < word.length 
  letter = word[index]
  position = alphabet.index(letter)
  new_position = position - 1 
  word[index] = alphabet[new_position]
  index += 1 
  end 
  puts word
end 

decrypt(encrypt("swordfish"))

#Nested Method Call:
#Ruby evaluates the methods one after another. Since encrypt is in parentheses
#it evaluates that and it passes the value to decrypt.
#This will work if both methods have already been defined.
