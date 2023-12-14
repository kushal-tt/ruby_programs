
  def binary_search(arr, target)
    low = 0
    high = arr.length - 1
  
    while low <= high
      mid = (low + high) / 2
      value = arr[mid]
  
      if value == target
        return "#{target} is present at index #{mid}"  
      elsif value < target
        low = mid + 1  
      else
        high = mid - 1  
      end
    end
  
    return "Element not found"  
  end
  
  # Example :
  sorted_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  target_value = 12
  target_value2 = 9
  
  p binary_search(sorted_array, target_value)
  p binary_search(sorted_array, target_value2)
  

  


