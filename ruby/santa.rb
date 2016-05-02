#6.3 Attributes

class Santa
   attr_reader :age, :ethnicity
   attr_accessor :gender

  def initialize(gender,ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = rand(140)
    puts "Initializing Santa instance..."
  end

  def speak
    puts "This santa who is #{@gender} and #{@ethnicity} greeets you:"
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type,reindeer_ranking)
    @reindeer_ranking = reindeer_ranking
    puts "#{reindeer_ranking} expresses his opinion about the cookie: "
    puts "That was a good #{cookie_type}."
  end
# three attribute-changing methods to your Santa class
  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking << (reindeer_name)
   end
# # setter method
#    def gender=(new_gender)
#      @gender = new_gender
#    end
#
# # getter methods
#    def age
#      @age
#    end
#
#    def ethnicity
#      @ethnicity
#    end
   def santa_profile
       puts "This santa is #{@gender}, #{@ethnicity} and #{@age} years old."
   end
end

#Driver code==========
# santa = Santa.new("agender", "latino")
# santa.speak
# santa = Santa.new("agender", "black")
# santa.speak
# santa = Santa.new("female", "Latino")
# santa.speak
# santa = Santa.new("bigender", "white")
# santa.speak
# santa = Santa.new("male", "Japanese")
# santa.speak
# santa.eat_milk_and_cookies("gingerbread", "Rudolph")

# santas = []
#
# santas << Santa.new("agender","Latino")
# santas << Santa.new("bigender", "White")
# santas << Santa.new("male", "South Arfican")
# santas << Santa.new("gender fluid", "British")
#
# santas.each do |santa|
# 	puts santa.celebrate_birthday
# end
#
# santas.each do |santa|
# 	puts santa.get_mad_at("Vixen")
# end
#
# santas.each do |santa|
# puts	santa.gender=("N/A")
# end
#
# santas.each do |santa|
# 	puts santa.age
# 	puts santa.ethnicity
# end


# Release 4=====================================

# Write a program that creates lots of Santas.
#If you're on a cloud-based environment, you may not want to push it past about a hundred Santas.
#If you're on a faster computer, you may be able to make lots more than that.
#Play around with the numbers and see what happens.
#
# Obviously, no one wants to create ten thousand Santas by hand. That's what computers are for!
#
# Use our array of example genders and an array of example ethnicities (and feel free to add to it if you like --
# each array could have a lot more options in it!) to create your Santas with a randomly selected gender
# and a randomly selected ethnicity.
# (How do you randomly select an array item? The Array documentation should be able to help you out there!)
# Set your new Santa's age to a random number between 0 and 140.
# No need to store your Santas in a data structure,
# but your program should print out the attributes of each Santa using the instance methods that give you access to that data.



example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

puts "How many santas are you capable to endure?"
 nmbr_of_santas = gets.chomp.to_i
 nmbr_of_santas.times {Santa.new(example_genders.sample, example_ethnicities.sample).santa_profile}