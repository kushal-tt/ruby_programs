class CustomError < StandardError
    def initialize(message = "Custom error message")
      super
    end
  end
  
  begin
    raise CustomError
  rescue CustomError => e
    puts "Caught custom error: #{e.message}"
end

# Handling Exceptions in a Method:
def divide(a, b)
    a / b
  rescue ZeroDivisionError => e
    puts "can't divide number by zero error: #{e.message}"
end
  
result = divide(10, 0)


# Raising an Exception:

def check_positive(number)
    raise ArgumentError, "Negative number not allowed" if number < 0
end
  
begin
    check_positive(10)
rescue ArgumentError => e
    puts "Argument error: #{e.message}"
ensure
    puts "this block exectues anyways"       
end
  

# Handling Exceptions in a Loop:

numbers = [1, 2, 0, 4, 5]

numbers.each do |num|
  begin
    result = 10 / num
    puts result
  rescue ZeroDivisionError => e
    puts "Divide by zero error: #{e.message}"
  end
end


# Nested Exception Handling:

begin
  begin
    result = 10 / 0
  rescue ZeroDivisionError => e
    puts "Inner rescue block: #{e.message}"
    raise "Reraising exception"
  end
rescue StandardError => e
  puts "Outer rescue block: #{e.message}"
end


# Using rescue with else:

begin
  result = 10 / 2
rescue ZeroDivisionError => e
  puts "Divide by zero error: #{e.message}"
else
  puts "No exception occurred. Result: #{result}"
end

# index out of bound exception
def access_array_element(arr, index)
    begin
      value = arr[index]
      puts "Value at index #{index}: #{value}"
    rescue IndexError => e
      puts "Index out of bounds: #{e.message}"
    end
end
  
array_example = [1, 2, 3, 4, 5]
access_array_element(array_example, 2) 
access_array_element(array_example, 10)