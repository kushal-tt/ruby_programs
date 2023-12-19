# Given an integer, for each digit that makes up the integer determine whether it is a divisor. Count the number of divisors occurring within the integer.
# Example: n = 124
# Check whether 1,2  and 4 are divisors of 124. All 3 numbers divide evenly into 124 so return 3.

def findDigits(n)
   digits = n.digits 
   divisor_count = 0

   digits.each do |digit|
     divisor_count += 1 if digit != 0 && n % digit == 0
   end
 
   return divisor_count

end

p findDigits(10)
p findDigits(111)