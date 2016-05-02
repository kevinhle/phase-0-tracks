#6.2 Mandatory Pairing: Instance Methods

# initialize a Puppy class
# add methods to the class and call them in driver code

class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(x)
  x.times {puts "Woof"}
  end

  def roll_over
    puts "*roll over*"
  end

  def dog_years(h)
    if h.to_i < 3
      d = h.to_i * 10
     p d
      else
      d = h.to_i * 4
      p d
    end

  end
     def shake(y)
       y.times {puts "Shake paw!"}
     end

  def initialize
    puts "Initializing new puppy instance..."
  end
end


fido = Puppy.new
fido.fetch("ball")
fido.speak(3)
fido.roll_over
fido.dog_years(2)
fido.shake(5)

# Release 2===============================================
# initialize a class of our choosing
# create 50 instances of the class and store them in an array
# iterate through the array and call the methods for the class.

class Cats

  def initialize
    puts "One of the litter is being created..."
  end

  def name(count)
    puts "Cat #{count}"
  end

  def sound(x)
    (x).times {puts "purrrr"}
  end

  def destruction
    puts "I ruined the sofa."
  end

  def hunting
    puts "Brings you a fresh mouse."
  end

end



cat_litter = []

counter = 0

while counter < 50
  #make 50 instances of the class
  cat = Cats.new
  cat_litter.push(cat)

  counter += 1

end

#p cat_litter

cat_counter = 1

cat_litter.each do |cat|
                cat.name(cat_counter)
                cat.sound(2)
                cat.destruction
                cat.hunting
                cat_counter += 1
              end