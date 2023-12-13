def calculate_average(numbers)
    raise NoMethodError, "Input must be a non-empty array" if numbers.empty?
  
    total = numbers.reduce(:+)
    average = total / numbers.length
    puts "Average: #{average}"
  rescue ZeroDivisionError
    puts "Error mesage: Cannot calculate average with an empty array"
  rescue NoMethodError => e
    puts "Error message: #{e.message}"
end
  
  # Using the method
  calculate_average([5, 8, 12])  
  calculate_average([])          
  calculate_average("not_an_array")
  
  class CustomError < StandardError
    def initialize(message = "Custom Errors")
      super
    end
  end
  
  def raise_custom_error
    raise CustomError, "This is a custom error message."
  rescue CustomError => e
    puts "Rescued: #{e.message}"
  end
  
  
  raise_custom_error
  