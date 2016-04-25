#At the top of your file, add a method that takes an array and an item as parameters, and returns the array with the item added. So add_to_array([], "a") would return ["a"], and add_to_array(["a", "b", "c", 1, 2], 3) would return ["a", "b", "c", 1, 2, 3]. Print a few test calls of the method.
def method_2(arg, arg1)
  numbers = arg.push(arg1)
  
end

#At the top of your file, add a method that takes three items as parameters and returns an array of those items. So build_array(1, "two", nil) would return [1, "two", nil]. This won't take much code, but the syntax might feel a bit odd. At the bottom of the file, call the method to show that it works.
def new_method(x, y, z)
  build_array = [x, y, z]
  
end

# Initialize an empty array and store it in a variable (you can choose the name). Print the variable using p.  
cars = []

p cars
# Add five items to your array. Print the array.

cars = ["ford", "chevy", "porche", "toyota", "honda"]
p cars

# Delete the item at index 2. Print the array.
cars.delete_at(2)
p cars

# Insert a new item at index 2. Print the array.
cars.insert(2, "porche")
p cars
# Remove the first item of the array without having to refer to its index. Print the array.
cars.shift
p cars

# Ask the array whether it includes a certain item. Print the result of this method call (labeled so it prints as more than just an isolated boolean value without any context.)
puts "Does the array cars contain ford?"
if cars.include?("ford") == true
  puts "it contains a ford"
  else
  puts "it does not contain a ford"
end

# Initialize another array that already has a few items in it.
more_cars = ["bmw", "audi", "vw", "lexus"]
p more_cars

# Add the two arrays together and store them in a new variable. Print the new array.
new_list_of_cars = cars.concat(more_cars)
p new_list_of_cars


p  new_method(2, 4, 7)


p method_2([],"a" )
p method_2(["a", "b", "c", 1, 2], 3)