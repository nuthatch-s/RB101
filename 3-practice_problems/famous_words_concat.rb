famous_words = "seven years ago..."

gettysburg = "Four score and #{famous_words}"
puts gettysburg

gettysburg2 = famous_words.prepend("Four score and ")
puts gettysburg2
puts famous_words


gettysburg3 = "Four score and " << famous_words
puts gettysburg3 # oops! two copies of "Four score and " - previous version mutated the caller!
puts famous_words
