def hamster_data(name, volume, fur_color, adoption, age)
	p 	  "The hamsters name is #{name}."
	p	  "The volume of the hamster is #{volume}."
	p	  "The fur of the hamster is #{fur_color} in color."
	p	  "The hamster is good for adoption? #{adoption}"
	p	  "The hamster is #{age} years old."
end


puts hamster_data("John", 8, "black", "yes", 1)