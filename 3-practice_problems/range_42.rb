# two solutions to a "is this number in this range? problem"

a_range = 10..100
p a_range.include?(42)

p (10..100).cover?(42)
