def bubble_sort(arr)
    n = arr.length
  
    (0..n - 1).each do |i|
      swapped = false
  
      (0..n - i - 2).each do |j|
        if arr[j] > arr[j + 1]
          arr[j], arr[j + 1] = arr[j + 1], arr[j]
          swapped = true
        end
      end
  
      break unless swapped
    end
end
  
bubble_sort_array = [64, 34, 25, 12, 22, 11, 90]
bubble_sort(bubble_sort_array)
puts "Bubble Sort Result: #{bubble_sort_array}"
  