def is_neon_number(number)
    square = number * number
    sum_of_digits = 0
  
    while square > 0
      sum_of_digits += square % 10
      square /= 10
    end
    sum_of_digits == number ?  "#{number} is a Neon Number."  :  "#{number} is not a Neon Number."
end
  

p is_neon_number(9)
p is_neon_number(20)
p is_neon_number(81)