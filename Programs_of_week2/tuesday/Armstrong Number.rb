# A Narcissistic Number (or Armstrong Number) is a positive number which is the sum of its own digits, 
# each raised to the power of the number of digits in a given base

# For example, take 153 (3 digits), which is narcissistic:
#     1^3 + 5^3 + 3^3 = 1 + 125 + 27 = 153


def narcissistic?(value)
    num_digits = value.digits.count
    original_value = value

    sum = 0
    while value > 0
      digit = value % 10
      sum += digit**num_digits
      value /= 10
    end
  
    return sum == original_value
end
  
puts narcissistic?(153)  
puts narcissistic?(1456)  