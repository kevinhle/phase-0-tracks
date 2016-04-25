# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

result = 'iNvEsTiGaTiOn'.swapcase
p result
# => “InVeStIgAtIoN”

result1 = 'zoom'.insert(2, 'o')
p result1
# => “zoom”

result2 = 'enhance'.center(15)
p result2
#=> “    enhance    ”

result3 = 'Stop! You’re under arrest!'.upcase
p result3
# => “STOP! YOU’RE UNDER ARREST!”

result2 = 'the usual' << ' suspects'
p result4
#=> “the usual suspects”

s = ' suspects'
s.insert(0, 'the usual')
#=> “the usual suspects”

result5 = 'The case of the disappearing last letter'.chop
p result5
# => “The case of the disappearing last lette”

result6 = 'The mystery of the missing first letter'[1..-1]
p result6
# => “he mystery of the missing first letter”

result7 = 'Elementary  ,    my   dear      Watson!'.squeeze(' ')
p result7
# => “Elementary, my dear Watson!”

result8 = 'z'.ord
p result8
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# in ASCII code 122 is the numerical representation of the character "z"

result9 = 'How many times does the letter ‘a’ appear in this string?'.count"a"
p result9
#=> 4