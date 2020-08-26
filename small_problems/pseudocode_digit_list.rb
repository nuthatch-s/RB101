=begin
P
input = integer
output = array of single digits

use modulo and division?

E
puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

D
array

Algo
Given a positive integer:
break it down into digits (could determine place values
using modulo math, then use division to return single digits 
rather than tens, hundreds and so on). print digits to screen
in the order they appear in the given number.

Pseudo
Given a positive integer:
set new var to integer#(method to break it into array of digits)
method reverses place order, need to reverse it back, so
set new variable to array#reverse!

Formal pseudo:
Start method
Set digit_array to int.digits
set result to digit_array.reverse!
return result

print elements of returned array
=end

def digit_list(integer)
  integer.digits.reverse
end

#provided examples/test cases
puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true