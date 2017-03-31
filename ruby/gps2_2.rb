# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: Create hash
  # hash will fulfil the requirement for item (key) and quantity (value)
  # set default quantity = 1
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?] hash 

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: Feed method parameter list item quantity
# output: assign quantity(value) to key(item)

# Method to remove an item from the list
# input: list, item
# steps: search hash for item, remove (delete method)
# output: updated hash

# Method to create grocery list

def create_list(string)
  list = {}
  string.split(" ").each { |item| list[item] = 1 }
 return list
end

string = "apples carrots pears"
marks_list = create_list(string)

# Method to add to grocerylist

def add_list(list, item, quantity = 1)
 list[item] = quantity
 return list
end

p add_list(marks_list, "celery", 2)

# Method to remove - test what happens if enter a value that isn't there
 def remove_list(list,item)
  list.delete(item)
  return list 
 end
 p remove_list(marks_list, "celery")

# Method to update the quantity of an item
# input: list, item, new quantity
# steps: search hash for item, update quantity
# output: updated hash
def update_item(list, item, quantity)
  if list.has_key?(item)
    list[item] = quantity
  else
    puts "Item not found."
  end
  return list
end

p update_item(marks_list, "apples", 2)

# Method to print a list and make it look pretty
# input: list
# steps: list.each do |x| puts x
# output: print hash to console

def print_list(list)
  puts "-"*10
  list.each { |item, quantity| puts "#{item}: #{quantity}" }
  puts "-"*10
end

print_list(marks_list)

# Re-factoring. Things to look for:
# 1) Efficiency: less lines, better methods, etc.
# 2) Readability: method names, formatting, etc.
# 3) DRY: Don't Repeat Yourself

=begin
What did you learn about pseudocode from working on this challenge?

What are the tradeoffs of using arrays and hashes for this challenge?

What does a method return?

What kind of things can you pass into methods as arguments?

How can you pass information between methods?

What concepts were solidified in this challenge, and what concepts are still confusing?

=end




