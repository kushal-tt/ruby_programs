#The maximum sum subarray problem consists in finding the maximum sum of a contiguous subsequence in an array or list of integers:
# maxSequence [-2, 1, -3, 4, -1, 2, 1, -5, 4]
# -- should be 6: [4, -1, 2, 1]

def max_sequence(arr)
    max_sum = arr[0]
    current_sum = arr[0]

    return 0 if arr.empty?
   (1...arr.length).each do |i|
     current_sum = [arr[i], current_sum + arr[i]].max
     max_sum = [max_sum, current_sum].max
   end
 
   return max_sum
end 

p "the answer is #{max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4])}"

# Question : Extract the domain name from a URL

def extract_domain(url)
    url.sub!(/^https?:\/\//, '')
    url.sub!(/^www\./,'')
    # p url
    p url.split('.').first
end

extract_domain('http://google.com')  
extract_domain('https://youtube.com')
extract_domain('www.xakep.ru')

# Given an n x n array, return the array elements arranged from outermost elements to the middle element, traveling clockwise.

# array = [[1,2,3],
#          [4,5,6],
#          [7,8,9]]
# snail(array) #=> [1,2,3,6,9,8,7,4,5]

def snail_array(arr)
    result = []

    while arr.flatten.any?
        result += arr.shift
        result += arr.map(&:pop)
        result += (arr.pop || []).reverse
        result += arr.reverse.map(&:shift)
    end
   result
end

arr1 = [
    [1, 2, 3, 4],
    [5, 6, 7, 8],
    [9, 10, 11, 12]
]

p snail_array(arr1)

# p arr1.map(&:pop)
# p arr1.pop.reverse
# p arr1.reverse.map(&:shift)
# p arr1.transpose.reverse

# Question: snail array in anticlock wise

def anti_snail(arr)
    result = []
    
    while arr.flatten.any?
        result += arr.shift.reverse
        result += arr.map(&:shift)
        result += arr.pop || []
        result += arr.reverse.map(&:pop)   
    end
    p result
end

arr1 = [
    [1, 2, 3, 4],
    [5, 6, 7, 8],
    [9, 10, 11, 12]
]

anti_snail(arr1)

#How many ways can you make the sum of a number?
def exp_sum(n)
    arr = [1] + [0] * n
  
    (1..n).each do |i|
      (i..n).each do |j|
        arr[j] += arr[j - i]
      end
    end
  
    arr[n]
end

p exp_sum(4)


#Complete the solution so that it splits the string into pairs of two characters. If the string contains an odd number of characters
#  then it should replace the missing second character of the final pair with an underscore ('_').

def split_string (str)
   str.concat('_') if str.length.odd? 
   str.scan /../
#  str.scan(/.{2}/)
end

p split_string("achhhha")

#Given an array of integers, find the one that appears an odd number of times.
# There will always be only one integer that appears an odd number of times.

def find_odd(arr)
 arr.find{|c| arr.count(c).odd? }
end

arr = [20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5]

p find_odd(arr)

#try to decode the strings
# If the input is not a string, your function must return "Input is not a string". 
# Your function must be able to handle capital and lower case letters. You will not need to
# 1) Ifmmp => Hello
# 2) Uif usjdl up uijt lbub jt tjnqmf => The trick to this kata is simple
# 3) 45 => "Input is not a string"

def one_down(txt)
    return "Input is not a string" unless txt.is_a?(String)
    txt.tr('b-zaB-ZA', 'a-zA-Z')
end

p one_down("Ifmmp Ipx bsf zpv")
p one_down("Uijt jt gvo")

# Implement the function unique_in_order which takes as argument a sequence and returns a list of items without any elements 
# with the same value next to each other and preserving the original order of elements.

# example:
# unique_in_order('AAAABBBCCDAABBB') == ['A', 'B', 'C', 'D', 'A', 'B']
# unique_in_order('ABBCcAD')         == ['A', 'B', 'C', 'c', 'A', 'D']

def unique_in_order(value)
    return [] if value.nil? || value.empty?
  
    result = [value[0]]
    (1..value.length-1 ).each do |i|
    #  p "#{value[i]} and #{i} "
      result << value[i] unless value[i] == value[i - 1]
    end
  
    result
end 

p unique_in_order("ABBCcAD")

#Write a Ruby function, sum_of_squares(n), 
# that takes a positive integer n as input and returns the sum of the squares of all positive integers from 1 to n.

def sum_of_squares(n)
    sum = 0
    (1..n).each do |num|
        sum += num**2
    end
    
    return sum
end

p sum_of_squares(2)

# write a Ruby program to convert binary to decimal

def binary_to_decimal(binary_str)

    unless binary_str.match?(/\A[01]+\z/)
      puts "Invalid binary input. Please provide a valid binary string."
      return
    end
  
    decimal = binary_str.to_i(2)
  
    return decimal
end

p binary_to_decimal("1101")

p binary_to_decimal("10011")


#Write a function that will return the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string. 
#The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.
#example : 
#aabBcde" -> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
# "indivisibility" -> 1 'i' occurs six times
# "Indivisibilities" -> 2 'i' occurs seven times and 's' occurs twice


def duplicate_count(text)
    char_count = Hash.new(0)
    text.downcase.each_char {|char| char_count[char] +=1}
    
    char_count.values.count {|count| count >1}
end

p duplicate_count("indivisy")

# Write Number in Expanded Form
#You will be given a number and you will need to return it as a string in Expanded Form. 
#For example:

# expanded_form(12);  Should return '10 + 2'
# expanded_form(70304);  Should return '70000 + 300 + 4'

def expanded_form(num)
    div = 10
    arr = []
    
    while num > 0
        a = num % div
        unless a == 0
            arr << a
        end
        p arr
        num -= a
        div *= 10
    end
    
    arr.reverse.join(' + ')
end

p expanded_form(10202)

#Build a pyramid-shaped tower, as an array/list of strings, given a positive integer number of floors.
# A tower block is represented with "*" character.

def tower_builder(n_floors)
    tower = []
    width = n_floors * 2 - 1
  
    n_floors.times do |floor|
      stars = '*' * (2 * floor + 1)
      spaces = ' ' * ((width - stars.length) / 2)
      tower << spaces + stars + spaces
    end
  
    tower
end

puts tower_builder(3)

  