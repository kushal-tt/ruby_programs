def quick_sort(arr, low, high)
    if low < high
      value_index = partition(arr, low, high)
  
      quick_sort(arr, low, value_index - 1)
      quick_sort(arr, value_index + 1, high)
    end
end
  
def partition(arr, low, high)
    value = arr[high]
    i = low - 1 
  
    (low..high - 1).each do |j|
      if arr[j] <= value
        i += 1
        arr[i], arr[j] = arr[j], arr[i]
      end
    end
  
    arr[i + 1], arr[high] = arr[high], arr[i + 1]
    return i + 1
end
  
  # Example usage:
  quick_sort_array = [10, 7, 8, 9, 1, 5]
  quick_sort(quick_sort_array, 0, quick_sort_array.length - 1)
  puts "Quick Sort Result: #{quick_sort_array}"
  