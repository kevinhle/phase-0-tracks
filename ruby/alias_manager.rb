name1 = ""
until name1 == "quit"


puts    "Enter your name"
	name1 = [gets.chomp]


    #The user input will be split then reversed
name1.map!do |spy_name |
    spy_name.split.reverse!
        end

    #input will be joined together
spy_name = name1.join('  ')

	# loop will add next letter in alphabet
index = 0
		while index < spy_name.length
	spy_name[index] = spy_name[index].next.delete("!")
index += 1
		end
if name1 == "quit"
	puts "Our spy  #{spy_name} is actually #{name1}"
else 
	puts "Your spy name is #{spy_name}"
end
end
Status API Training Shop Blog About
