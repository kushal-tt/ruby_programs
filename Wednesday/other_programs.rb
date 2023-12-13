# Given two array of integers(arr1,arr2). Your task is going to find a pair of numbers(an element in arr1, and another element in arr2), their difference is as big as possible(absolute value); Again, you should to find a pair of numbers, their difference is as small as possible. Return the maximum and minimum difference values by an array: [  max difference,  min difference  ]

# For example:

# Given arr1 = [3,10,5], arr2 = [20,7,15,8]
# should return [17,2] because 20 - 3 = 17, 10 - 8 = 2

def max_and_min(arr1,arr2)
    max_diff = (arr1.max - arr2.min) 
    min_diff = (arr2.max - arr1.min)
   arr1.each do |num1|
     arr2.each do |num2|
       max_diff = [max_diff, (num1 - num2).abs].max
       min_diff = [min_diff, (num1 - num2).abs].min
     end
   end
 
   [max_diff, min_diff]
end 

p max_and_min([3,10,5],[20,7,15,8])
p max_and_min([3],[20])

# Complete the method which returns the number which is most frequent in the given input array. If there is a tie for most frequent number, return the largest number among them.

def highest_rank(arr)
    count_hash = Hash.new(0)
    arr.each{|num| count_hash[num] += 1}
    # p count_hash
    max_value = count_hash.values.max

    key_with_max_value = count_hash.select{|key, value| value == max_value}.keys

    key_with_max_value.max
end

p highest_rank([8, 10, 12, 12, 8, 6, 4, 8, 12])

#Given two strings, the first being a random string and the second being the same as the first, but with three added characters somewhere in the string (three same characters),
# Write a function that returns the added character

# E.g
# string1 = "hello"
# string2 = "aaahello"

def added_char(s1, s2) 
    char_count1 = Hash.new(0)
    char_count2 = Hash.new(0)

     s1.each_char{|char| char_count1[char] += 1 }
     s2.each_char{|char| char_count2[char] += 1 }

    char_count2.each do |char, count|
        return char if char_count1[char] != count
    end

end

 p added_char("aabbcc","aacccbbcc")

#  Implement the function which takes an array containing the names of people that like an item. It must return the display text as shown in the examples:

#  []                                -->  "no one likes this"
#  ["Peter"]                         -->  "Peter likes this"
#  ["Jacob", "Alex"]                 -->  "Jacob and Alex like this"
#  ["Max", "John", "Mark"]           -->  "Max, John and Mark like this"
#  ["Alex", "Jacob", "Mark", "Max"]  -->  "Alex, Jacob and 2 others like this"
#  Note: For 4 or more names, the number in "and 2 others" simply increases.

def format_likes(names)
  case names.length
  when 0
    "no one likes this"
  when 1
    "#{names[0]} likes this"
  when 2
    "#{names[0]} and #{names[1]} like this"
  when 3
    "#{names[0]}, #{names[1]} and #{names[2]} like this" 
  else
    "#{names[0]}, #{names[1]} and #{names.length - 2} others like this"
  end
end

p format_likes(['Alex', 'Jacob', 'Mark', 'Max'])

#Your job is to write a function that will find the secret words of the message and return them in order. 
# The words in the secret message should be ordered in the order in which they are found as a duplicate, 
# for example:
# 'This is a test. this test is fun.' // --> 'this test is'

def find_secret_message(message)
  words = message.downcase.split(' ')
  word_count = Hash.new(0)
  duplicates = []

  words.each do |word|
    word_count[word] += 1
    duplicates << word if word_count[word] == 2
  end

  duplicates.uniq.join(' ')
end 

p find_secret_message("this is a very interesting book. it is a stroy of a interesting person")

# In this kata you are required to, given a string, replace every letter with its position in the alphabet.
# If anything in the text isn't a letter, ignore it and don't return it.
# "a" = 1, "b" = 2, etc.

# Example
# alphabet_position("The sunset sets at twelve o' clock.")
# Should return "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11" ( as a string )


def alphabet_position(text)
  
  lowercase_text = text.downcase

  alphabetic_chars = lowercase_text.scan(/[a-z]/)

  positions = alphabetic_chars.map { |char| char.ord - 'a'.ord + 1 }
  result = positions.join(' ')

   result
end

p alphabet_position("Ruby is very easy to learn")

#You are going to be given an array of integers. Your job is to take that array and find an index N where the sum of the integers to the left of N is equal to the sum of the integers to the right of N. 
# If there is no index that would make this happen, return -1.
# Ex:  forarray {1,2,3,4,3,2,1}:
#  function will return the index 3, because at 3rd position , the sum of left side of the index is equal to  sum of the right side which is 6.{1,2,3} = {3,2,1}

def find_even_index(arr)
  left_sum = 0
  total_sum = arr.sum
  
  arr.each_with_index do |num , index|
    total_sum -= num
    if left_sum == total_sum
      return index
    end
    
    left_sum +=  num
  end
  return -1
end

p find_even_index([1,2,3,4,5,6])
p find_even_index([20,10,30,10,10,15,35])
