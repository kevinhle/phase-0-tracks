#GPS 2.2 - Ruby - Create an Electronic Grocery List

# Method to create a list
def create_list(string, default=1)
  # input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
# take a string and break it into an array
# set default quantity
# create a hash with a method to translate the arrays into keys and values
  
  grocery_list = string.split(' ')
  grocery_hash = Hash.new
  grocery_list.each do |x|
    grocery_hash[x] = 1
  end
  return grocery_hash
end

# print hash
list=create_list("potato celery cucumbers milk")
 #print list
# print the list to the console [can you use one of your other methods here?]
# output: hash

#================================
# Method to add an item to a list
# input: insert hash with new input(new_item, new_quantity)
# steps: insert item and quantity in to that hash
# output: updated hash
  def add_item(item,qty, grocery_hash)
    newer_hash= {item=>qty}
    new_list = grocery_hash.merge(newer_hash)
    p new_list
  end
#===========================
# Method to remove an item from the list
# input: latest updated hash and the desired item and value considered for deletion
# steps: delete item and quantity
# output: another updated hash
  def remove_item(item, grocery_hash)
    grocery_hash.delete(item)
    return grocery_hash
  end

#============================
# Method to update the quantity of an item
# input: updated hash and another item and value and specify which item and value to update
# steps: replace item and value with new item and value
# output: another updated hash
  def update_item(item, qty, grocery_hash)
    grocery_hash[item] = qty
    p 'farts back and forth forever'
    return grocery_hash
  end

#==================
# Method to print a list and make it look pretty
# input: completed hash
# steps: translate each key ad value into a string
# output: strings

def print_list( grocery_hash)
  puts "Grocery list:"
  grocery_hash.each do |item,qty|
    puts "#{item} --> #{qty}"
  end
end
print_list(list)


#==================================================
## inputs -> some kind of operations -> outputs

# def stuff1
#   puts 'argone'
#   return 'argtwo'
# end

# def stuff2
#   puts 'argone'
#   'argtwo'
# end

# def stuff3(skip = false)
#   return 'argthree' if skip
#   puts 'argone'
#   'argtwo'
# end

# result = stuff1
# p "result is #{result}"
# result = stuff2
# p "result is #{result}"
# result = stuff3(true)
# p "result is #{result}"

# def run
#   test_list = create_list('fast rings hedgehog')
#   p test_list.keys().length == 3
#   test_list = add_item('emerald', 7 ,test_list)
#   p test_list.keys().length == 4
#   p test_list['emerald'] == 7
#   test_list = remove_item('rings', test_list)
#   p test_list.keys().length == 3
#   test_list = update_item('fast', 2, test_list)
#   p test_list
#   p test_list['fast'] == 2
#
# end
#
# run

#============================================
# Release 3: Test your solution
# Create a new list
# Add the following items to your list
# Lemonade, qty: 2
# Tomatoes, qty: 3
# Onions, qty: 1
# Ice Cream, qty: 4
# Remove the Lemonade from your list
# Update the Ice Cream quantity to 1
# Print out your list (Is this readable and nice looking)?

list = create_list("Lemonade Tomatoes Onions Ice_Cream")
print list
update_item("Lemonade", 2, list)
p list
update_item("Tomatoes", 3, list)
p list
update_item("Onions", 1, list)
p list
update_item("Ice_Cream", 4, list)
p list
remove_item("Lemonade",list)
p list
update_item("Ice_Cream", 1, list)
p list
print_list(list)

#=======================================
# Release 5: Reflect
# On your own, add a commented reflection section to your gps2_2.rb file. Answer the following questions in your reflection:
#
# What did you learn about pseudocode from working on this challenge? Pseudocode is more important then I thought, I still new to work on it and it makes coding  much easier.
# What are the tradeoffs of using arrays and hashes for this challenge? It this case it was easier to use a hash since we had 2 atributes to work with , the grocery item and the quatity of the grocery item, the value.
# What does a method return? It returns the last line of code in the method.
# What kind of things can you pass into methods as arguments? You can pass strings, integers, arrays, hashes
# How can you pass information between methods? We can pass information between methods by assigning a variabile outside of that method (list = create_list)
# What concepts were solidified in this challenge, and what concepts are still confusing? It's clearer the way we can pass information between methods, but I still need work in pseudocoding and refactoring, and not shure when to use return.
