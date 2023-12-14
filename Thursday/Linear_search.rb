def linear_search(arr, target_value)
    arr.each_with_index do |value, index|
      result = "#{target_value} found at index #{index}."
      return result  if value == target_value
    end
  
    return "value not found"
end
  
arr = [4, 2, 7, 1, 9, 3]
target_value = 9
  
p  result = linear_search(arr, target_value)

  
  