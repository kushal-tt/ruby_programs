def merge_sort(arr)
    return arr if arr.length <= 1
  
    mid = arr.length / 2
    left = merge_sort(arr[0...mid])
    right = merge_sort(arr[mid..-1])
  
    merge(left, right)
end
  
def merge(left, right)
    result = []
    l, r = 0, 0
  
    while l < left.length && r < right.length
      if left[l] < right[r]
        result << left[l]
        l += 1
      else
        result << right[r]
        r += 1
      end
    end

    result.concat(left[l..-1]) if l < left.length
    result.concat(right[r..-1]) if r < right.length
  
    result
end
  
  # Example usage:
  merge_sort_array = [38, 27, 43, 3, 9, 82, 10]
  result = merge_sort(merge_sort_array)
  puts "Merge Sort Result: #{result}"
  