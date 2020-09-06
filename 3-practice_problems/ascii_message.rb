message = "The Flintstones Rock!"

55.times { |counter| puts message.prepend(" ") }

# solution given: 10.times { |number| puts (" " * number) + "The Flintstones Rock!" }
# which has an advantage if you want to return to left justified an begin another iteration
# because it does not mutate the caller. With my solution, would need to periodically reset the message (strip?)
