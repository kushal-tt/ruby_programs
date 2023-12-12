#You are given a Ruby function which takes a positive integer n as input. The function is intended to return a new integer formed by arranging the digits of n in descending order.

def descending_order(n)
    arr=n.to_s.split('')
    arr.sort.reverse.join.to_i
end
p descending_order(548922300)


#You've just finished writing the last chapter for your novel when a virus suddenly infects your document. It has swapped the 'i's and 'e's in 'ei' words and capitalised random letters. Write a function which will:

# a) remove the spelling errors in 'ei' words. (Example of 'ei' words: their, caffeine, deceive, weight)
# b) only capitalise the first letter of each sentence. Make sure the rest of the sentence is in lower case.

# Example: He haD iEght ShOTs of CAffIEne. --> He had eight shots of caffeine.

def proofread(text)
    correct_text = text.split('.')
    final_string =''
    correct_text.each do |sentence|
        sentence = sentence.strip.capitalize.gsub("ie","ei")
        final_string += sentence + '. '
    end
   final_string.strip
end
 p proofread("she LifTeD heR ViEL. the ShIeK LooKeD aT hER ExPeCtAnTlY. he haD iEght ShOTs of CAffIEne")
 p proofread("IN the wINter, it's NICE to gO for a sliegh rIDe")


# question : In this simple Kata your task is to create a function that turns a string into a Mexican Wave. You will be passed a string and you must return that string in an array where an uppercase letter is a person standing up. 
# rule :
# 1.  The input string will always be lower case but maybe empty.
# 2.  If the character in the string is whitespace then pass over it as if it was an empty seat

#EX: wave("hello") => ["Hello", "hEllo", "heLlo", "helLo", "hellO"]

def wave(str)
    result = []
    
    str.chars.each_with_index do |char, index|
      next if char == ' '
      
      waved_string = str.dup
      waved_string[index] = waved_string[index].upcase
      result << waved_string
    end
   
    result
end 

p wave("Hi hello")

#You will be given an array of numbers. You have to sort the odd numbers in ascending order while leaving the even numbers at their original positions.
# Examples
# [5, 8, 6, 3, 4]  =>  [3, 8, 6, 5, 4]
# [9, 8, 7, 6, 5, 4, 3, 2, 1, 0]  =>  [1, 8, 3, 6, 5, 4, 7, 2, 9, 0]
def sort_array(source_array)
    odd_numbers = source_array.select(&:odd?).sort
    result = source_array.map { |num|  num.odd? ? odd_numbers.shift : num}
end
arr = [5, 3, 2, 8, 1, 4, 11]
p sort_array(arr)


#You're writing code to control your town's traffic lights. You need a function to handle each change from green, to yellow, to red, and then to green again.
# Complete the function that takes a string as an argument representing the current state of the light and returns a string representing the state the light should change to.

def update_light(current)
    case current
      when "green"
       "yellow" 
      when "yellow"
       "red"
      when "red"
       "green"
      else
      "default"
    end
end

p update_light("red")

# You need to write regex that will validate a password to make sure it meets the following criteria:

# At least six characters long
# contains a lowercase letter
# contains an uppercase letter
# contains a digit
# only contains alphanumeric characters (note that '_' is not alphanumeric)

regex=/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{6,}$/

password = "fjd3IR9"
password2 = "DSJKHD23"
p password.match?regex
p password2.match?regex

# Write a Ruby program to perform a binary search on a sorted array. return not found if element not found

def binary_search(arr, target)
  low = 0
  high = arr.length - 1

  while low <= high
    mid = (low + high) / 2
    if arr[mid] == target
      return mid
    elsif arr[mid] < target
      low = mid + 1
    else
      high = mid - 1
    end
  end

  "not found"  
end

puts binary_search([1, 2, 3, 4, 5, 6, 7, 8, 9], 12) 

# Write a function in Ruby that accepts two integers as arguments. The function should sum all the integers from the lowest parameter to the highest one.
# For example, if the two arguments are 1 and 10, the function should return 55, which is 1+2+3+4+5+6+7+8+9+10.

def sum_of_all(arg1 , arg2)
    if arg1 < arg2
     (arg1..arg2).sum
    else
        return "enter proper range"
    end
    # arg1 < arg2 ? (arg1..arg2).sum :  "enter proper range"
end
p sum_of_all(10, 15)
p sum_of_all(20, 6)

# The goal of this exercise is to convert a string to a new string where each character in the new string is "(" if that character appears only once in the original string,
#  or ")" if that character appears more than once in the original string. Ignore capitalization when determining if a character is a duplicate.

# Examples
# "din"      =>  "((("
# "recede"   =>  "()()()"
# "Success"  =>  ")())())"

def duplicate_encode(word)
    lowercase_word = word.downcase
   characters_array = lowercase_word.chars

  encoded_array = characters_array.map do |char|
    lowercase_word.count(char) > 1 ? ')' : '('
  end

 encoded_array.join
end

p duplicate_encode("recede")
p duplicate_encode("hello")

# Write a function to convert a name into initials. This kata strictly takes two words with one space in between them.
# The output should be two capital letters with a dot separating them.
# It should look like this:
# Sam Harris => S.H   patrick feeney => P.F

def abbrev_name(name)
    name.split.map{ |word| word[0].upcase}.join('.')
end

p abbrev_name("David Mendieta")