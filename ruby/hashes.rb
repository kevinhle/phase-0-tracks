#Enter the details of any given client
puts 'Enter the details for your client!'
#ask the user for all of this info
puts 'What is your name?'
  name = gets.chomp.capitalize


puts 'What is your age?'
  age = gets.chomp.to_i

puts 'What is the number of your children?'
  nmbr_children = gets.chomp.to_i

puts 'What is your decor theme?'
  decor_theme = gets.chomp.capitalize

puts 'What is your favorite color?'
   color = gets.chomp.capitalize

puts 'Do you like vintage furniture?( yes/no)'
   vintage = gets.chomp.to_s
   if vintage == "yes"
   	 vintage = true
   	else 
   		vintage = false
   	end

puts 'How many rooms do you have?'
    nmbr_rooms = gets.chomp.to_i

#create hash with the user input
user_input = {
	Name:  name,
	Age:  age,
	Nmbr_children:  nmbr_children,
	Decor_theme:  decor_theme,
	Color:  color,
	Vintage:  vintage,
	Nmbr_rooms:  nmbr_rooms
}
#Print the hash back out to the screen when the designer has answered all of the questions.

user_input.each {|k, v| print k, "  ", v,"\n"}

#Give the user the opportunity to update a key (no need to loop, once is fine). 
#After all, sometimes users make mistakes! If the designer says "none", skip it. 
#But if the designer enters "decor_theme" (for example), your program should ask for a new value and update the :decor_theme key. 
#(Hint: Strings have methods that will turn them into symbols, which would be quite handy here.) 
#You can assume the user will correctly input a key that exists in your hash -- no need to handle user errors.

puts 'Would you like to update some of your information?If so please indicate the key value!(none if you don"t)'
   key = gets.chomp.to_sym.capitalize
   
puts 'What is the new information for this key?'
     information = gets.chomp.capitalize
   if key == :none
      puts 'Thank you for your colaboration'
   else 
    user_update = {key => information}
    user_input.merge!(user_update)
   end

print 'This is the new user information:'
p user_input