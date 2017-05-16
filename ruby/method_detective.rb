# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”
# "iNvEsTiGaTiOn".swapcase!
# => “InVeStIgAtIoN”
"iCky".swapcase

# "zom".replace "zoom"
# => “zoom”
# "zom".insert(2, 'o')
# => “zoom”
"evbootcamp".insert(0, "d")

# "enhance".center(14)
# => "    enhance    "
"hello".center(10)

# "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"
"How to scream at people".upcase

# "the usual".replace "the usual suspects"
#=> "the usual suspects"

# " suspects".insert(0, 'the usual')
# => "the usual suspects"
"hello".insert(-1, " world")

# "The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"
#{ => "The case of the disappearing last letter".slice(0,39)
# => "The case of the disappearing last lette"

# "The mystery of the missing first letter".slice(1,39)
# => "he mystery of the missing first letter"
# "The mystery of the missing first letter".delete!("T")
# => "he mystery of the missing first letter"

# "Elementary,    my   dear        Watson!".squeeze(" ")
# => "Elementary, my dear Watson!"

# "z".ord
# => 122
# (What is the significance of the number 122 in relation to the character z? 122 is the ASCII code for the character z.)

# "How many times does the letter 'a' appear in this string?".count "a"
# => 4