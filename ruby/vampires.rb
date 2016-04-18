# questions
puts "How many employees are we processing today"
timestorepeat = gets.chomp
times = 0

until times >= timestorepeat.to_i do

# Test Questions
puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp
puts "What year were you born?"
birthyear = gets.chomp

if (2016-birthyear.to_i == age || 2016-birthyear.to_i == age.to_i+1) 
	correctage = true
else correctage = false
end

puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)"
garlic = gets.chomp
puts "Would you like to enroll in the company's health insurance? (yes/no)"
insurance = gets.chomp

# allergies
puts "Any allergies? (allergy/done)"
listdone = false
while listdone == false 
	allergy = gets.chomp
	if allergy == "sunshine"
		listdone = true
		sunshine = true
	elsif allergy == "done"
		listdone = true
		sunshine = false
	else 
		puts "Any other allergies? (allergy/done)"
		listdone = false
	end
end

# Each answer is given a score. The scores are weighted.
vampirelitmus = 0
if correctage == false 
	vampirelitmus += 2
end
if garlic == "no" 
	vampirelitmus += 1
end
if insurance == "no" 
	vampirelitmus += 1
end
if (name == "Drake Cula" || name == "Tu Fang")
	vampirelitmus = 5
end
if sunshine == true
	vampirelitmus = 3
end

# Each score has an output. The output is printed to the command line.
case vampirelitmus
	when 0, 1
		puts "Probably not a vampire."
	when 3
		puts "Probably a vampire."
	when 4
		puts "Almost certainly a vampire."
	when 5
		puts "Definitely a vampire."
	when 2
		puts "Results inconclusive."
end

#increment the loop
times += 1

end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."