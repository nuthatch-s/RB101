def input_prompt(message)
  print "=> #{message}\n=> "
end

def message_prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num == '0' || num.to_f != 0
end

def get_name
  loop do
    name = gets.chomp

    if name.empty?
      message_prompt "Make sure to enter a valid name."
    else
      break
    end
  end
end

def get_loan_amount
  loan_amount = 1

  loop do
    input_prompt "What is the loan amount?"
    raw_amount = gets.chomp

    if valid_number?(raw_amount)
      loan_amount = raw_amount.to_f
      break
    else
      message_prompt "Hmm, I only understand numbers."
    end
  end
  loan_amount
end

def get_monthly_rate
  monthly_rate = 1
  loop do
    input_prompt "What is the APR? __ %"
    apr = gets.chomp

    if valid_number?(apr)
      monthly_rate = apr.to_f / (12 * 100)
      break
    else
      message_prompt "Hmm, I only understand numbers."
    end
  end
  monthly_rate
end

def get_loan_duration
  loan_duration_months = 1
  loop do
    input_prompt "What is the loan duration in years?"
    loan_duration_years = gets.chomp

    if valid_number?(loan_duration_years)
      loan_duration_months = loan_duration_years.to_f * 12
      break
    else
      message_prompt "Hmm, I only understand numbers."
    end
  end
  loan_duration_months
end

input_prompt "Welcome to Mortgage Calculator! Enter your name:"
name = ''
get_name

message_prompt "Hello, #{name}"

loop do
  loan_amount = get_loan_amount

  monthly_rate = get_monthly_rate

  loan_duration_months = get_loan_duration

  monthly_payment = loan_amount * (monthly_rate /
  (1 - (1 + monthly_rate)**(-loan_duration_months)))

  message_prompt "The monthly payment would be:
    $#{format('%.2f', monthly_payment)}"

  input_prompt "Do you want to make another calculation? (Y to calculate again)"
  answer = gets.chomp
  break unless answer.downcase == 'y' || answer.downcase == 'yes'
end

message_prompt "Thank you for using Mortgage Calculator"
