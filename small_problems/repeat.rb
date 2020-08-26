def repeat

  puts "What should I repeat?"
  phrase = gets.chomp
  puts "how many times should I repeat it?"
  index = gets.chomp.to_i
    index.times do
      puts phrase
    end
  end
  
#repeat("hello", 5) #if method is set up the same except takes two arguments and called this way, will not take input from user

repeat
