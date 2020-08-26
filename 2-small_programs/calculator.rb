def prompt(message)
  print "=> #{message}\n=> " # modified to provide a user prompt
end

def prompt2(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num == '0' || num.to_i() != 0
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt "Welcome to Calculator! Enter your name:"
name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt "Make sure to use a valid name."
  else
    break
  end
end

prompt2 "Hello #{name}"

loop do # main loop
  number1 = ''
  number2 = ''
  operator = ''

  loop do
    prompt "What's the first number?"
    number1 = gets.chomp

    if valid_number?(number1)
      break
    else
      prompt("Hmm, I only understand numbers.")
    end
  end

  loop do
    prompt "What's the second number?"
    number2 = gets.chomp

    if valid_number?(number2)
      break
    else
      prompt2 "Hmm, I only understand numbers."
    end
  end

  operator_prompt = <<-MSG
What operation would you like to perform? 
   1) add 
   2) subtract 
   3) multiply 
   4) divide 
   MSG
  prompt operator_prompt

  loop do
    operator = gets.chomp
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt "You must choose 1, 2, 3, or 4"
    end
  end

  result =  case operator
            when '1'
              number1.to_i + number2.to_i
            when '2'
              number1.to_i - number2.to_i
            when '3'
              number1.to_i * number2.to_i
            when '4'
              number1.to_f / number2.to_f
            end

  prompt2 "#{operation_to_message(operator)} the two numbers"

  prompt2 "The result is #{result}"
  prompt "Do you want to perform another calculation? (Y to calculate again)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end # main loop

prompt2 "Thank you for using Calculator"
