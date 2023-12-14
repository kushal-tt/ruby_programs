# decimail to binary conversion without using pre-define method


def decimal_range_to_binary(num)
  binary_representations = {}

  (1..num).each do |decimal|
    binary_representations[decimal] = decimal_to_binary(decimal)
  end

  binary_representations
end

def decimal_to_binary(decimal)
    return '0' if decimal.zero?
  
    binary = ''
    temp_decimal = decimal
  
    while temp_decimal > 0
      remainder = temp_decimal % 2
      binary = "#{remainder}#{binary}"
      temp_decimal /= 2
    end
  
    binary
end

p decimal_range_to_binary(6)
p decimal_to_binary(6)