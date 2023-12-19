# Given an array of integers, remove the smallest value. Do not mutate the original array/list. If there are multiple elements with the same value, 
# remove the one with a lower index. If you get an empty array/list, return an empty array/list.
# Don't change the order of the elements that are left.

# Examples
# * Input: [5,3,2,1,4], output = [5,3,2,4]

def remove_smallest(arr)
    return [] if arr.empty?
   min_index = arr.index(arr.min)
   arr[min_index + 1, arr.length]
   result = arr[0, min_index] + arr[min_index + 1, arr.length]
   
   return result
end

p  remove_smallest([1, 2, 3, 4, 5])
p remove_smallest([2, 2, 1, 2, 1])