# Spy number without using pre defined numbers 

def is_spy_number(num)
    
    num_digits = 0
    temp_num = num
  
    while temp_num > 0
      temp_num /= 10
      num_digits += 1
    end
  
    
    digits = Array.new(num_digits)
    temp_num = num
  
    (num_digits - 1).downto(0) do |i|
      digits[i] = temp_num % 10
      temp_num /= 10
    end
  
    
    sum = 0
    product = 1
  
    digits.each do |digit|
      sum += digit
      product *= digit
    end
    
    sum == product ? "#{num} is a spy number" : "#{num} is not a spy number"
end
  

  puts is_spy_number(1124)
  puts is_spy_number(123)
  puts is_spy_number(1122)
  puts is_spy_number(22)
  