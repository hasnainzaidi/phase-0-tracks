def encrypt(word)
  index = 0 
  while index < word.length 
  word[index] = word[index].next
  index += 1 
  end 
 puts word
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

encrypt("abc")
encrypt("zed")
decrypt("bcd")
decrypt("afe")