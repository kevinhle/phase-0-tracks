#5.4 Mandatory Pairing : Iterations

#Write Your Own Method That Takes a Block
def my_method
    puts "I love these sports"
    yield("Baseball", "basketball", "Football")
end

my_method {|x, y, z| puts "I love to play #{x}, #{y}, #{z}"}
puts ("----------------------------------")
#Release 1 use each, map and map!


usa = [ "Illinois", "New York", "California","Texas"]
states_cityes = {
	:Illinois => "St Louis",
	:NewYork => "Brooklyn",
	:California =>  "Los Angeles",
	:Texas => "Dallas"
}
usa_new = []

puts "Original array and hash:"
p usa
puts("-----------------------") 
p states_cityes
puts("-----------------------------")
#Use .each method on the array
usa.each do |state|
	usa_new << state.upcase
end

puts "After the .each call on the array:"
p usa
puts("---------------------------------")
p usa_new
puts ("----------------------------------")
#Use .map! on the array
usa.map! do|state|
    puts state
    state.downcase
end
puts "After the .map! call on the array:"
p usa

puts ("----------------------------------")
#Use .each on an hash
puts "After the .each call on the hash:"
states_cityes.each do |state, city|
    puts "#{city} is the capital of #{state}"
end

p states_cityes


#Another method for arrays that takes a block

fruits = ["apple", "kiwi", "cherry", "orange"]
p fruits.index {|x| x == "cherry"}

#Another method for hashes that takes a block

h = { "a" => 10, "b" => 20, "c" => 30 }
p h.select {|k,v| k > "a"}  
p h.select {|k,v| v < 20}  

#A method that iterates through the items, deleting any that meet a certain condition

values = [45, 56, 78, 91]
values.delete_if {|value| value < 90}
p values

#A method that filters a data structure for only items that do satisfy a certain condition

a = [1, 2, 3, 4, 5, 6, 7]
p a.take_while{|x| x < 5}

#A different method that filters a data structure for only items satisfying a certain condition 

a2 = [12, 14, 45, 56, 67,79]
p a2.keep_if{|x| x > 34}


#A method that will remove items from a data structure until the condition in the block evaluates to false, then stops.

a3 = [ 11, 12, 13, 14, 15, 16]
p a3.reject{|x| x < 14}