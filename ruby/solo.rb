#6.4 Solo Challenge: Designing and Implementing a Class

# Design (as opposed to actually building) a class representing anything you like.
# (Please make it something we have at least heard of.)
# Whether you want to build a fire-breathing dragon, a dress, or a soccer ball, we hereby grant you the freedom to implement it.
# No matter what you design, your class must have:
# at least three attributes (using at least two data types) whose values will vary from instance to instance (example: age)
# at least three methods, at least one of which takes an argument
# You're welcome to creative about these: a dress can have a swish method, a soccer ball can have an inflatedness attribute,
# and ... we hope it's obvious what a fire-breathing dragon can do, but if not, you'll figure it out.

# Class Rollercoaster------
# The Big CAHUNA
# CHARACTERISTICS--------------
# age : varies
# height : varies
# weight : varies
# name : varies
# BEHAVIOR--------------
# Method one check for appropriate age
# Method two check for appropriate height
# Method two check for appropriate weight
# Method that asks if you are prepared for what is ahead


class Rollercoaster
  attr_reader :roll_name
  attr_accessor :user_name, :age, :height

  def initialize(name, age, height)
    @age = age.to_i
    @user_name = name.capitalize
    @height = height.to_i
    @roll_name =["Kingda Ka","Superman", "Tower of Terror", "Fury", "Steel Dragon", "Millennium Force"]
    puts "Rollercoaster madness!"
  end

  def age_verification(age)
    if @age >  5
      puts "Enjoy the ride!"
    else
      puts "I'm sorry you can't ride the rollercoster, maybe next year!"
    end
  end

  def height_verification(height)
     if @height < 3
       puts "Not suitable for this ride!"
     else
       puts "Enjoy the ride!"
     end
   end

   def rollercoster_picker(name, roll_name)
     puts "#{user_name}, #{age} pick the Rollercoaster that you want to ride!"
     puts "#{roll_name} is a great choice, come back again!"
   end

   def all_rides
     puts "Your name is #{user_name} are #{age} years old, #{height} feet tall and you have enjoied #{roll_name.sample}!"
   end
 end

#  Modify your program so that it has a user interface (a user can interact with your program via the command line).
#
#  Your user should be allowed to create as many instances of your class as they like.
#  Prompt the user for each attribute, and don't forget to convert their input to the appropriate data type.
#  Store these class instances in an array.
#  When the user indicates that they are finished creating instances,
#  loop through the array and print out the attributes of each instance as a confirmation message of what was created.

# Testing

# roll1 = Rollercoaster.new("adrian", 34, 2)
# p roll1.user_name
# p roll1.age
# p roll1.height
# roll1.age_verification(4)
# roll1.height_verification(6)
# roll1.rollercoster_picker("adi", "Kingda Ka")

# User interface

rollercoaster = []

puts "How many rollercoasters would you like to ride?"
 nmbr_of_rides = gets.chomp.to_i
 nmbr_of_rides.times do
   puts "Plese enter your information:(name, age and height)"
    user_name = gets.chomp.capitalize
    age = gets.chomp.to_i
    height = gets.chomp.to_i
    rollercoaster << Rollercoaster.new(user_name, age, height)
  end

rollercoaster.each do |ride|
  ride.all_rides
end