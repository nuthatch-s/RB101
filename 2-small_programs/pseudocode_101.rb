=begin
1. Write out pseudo-code (both casual and formal) that returns the sum of two integers

ask the user for a number and assign it to a variable
ask the user for a second number and assign it to a variable
add the numbers together - being careful of datatypes
output the result to the screen

Formal pseudo:
start
Get number from user, set to number1
get number from user, set to number2
add number1 and number2, converting datatypes if needed
print result to screen
end

2.Write out pseudo-code (both casual and formal) that 
takes an array of strings, and returns a string that is 
all those strings concatenated together 

Given an array of strings --
create a variable my_string, set it to an empty string
iterate over the array, adding each element of array to my_string separated by a space
print my_string to the screen

Start
Set new variable my_string to ""
for each element in given_array, add the element plus a space to my_string (refine by leaving final space off?)
Print my_string


3.Write out pseudo-code (both casual and formal) that takes
an array of integers, and returns a new array with every other element 

Given an array of integers --
create a new variable my_array and set it to an empty array
iterate over the given array and add the even-indexed elements to the new array - indices 0, 2, 4, etc. - and disregard the odd-indexed numbers
print my_array

Formal Pseudocode
Start
Set new variable my_array = []
for each element in given_array, add element to my_array If element index is even
print my_array
End

Start           (the program)
Set             (a variable)
Get             (from user)
Print           (to screen/for user's viewing)
Read            (retrieve value from variable)
If/Else if/Else (show conditional branches in logic)
While or Until  (show looping logic)
End             (the program)