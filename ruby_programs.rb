# Given an array (arr) as an argument complete the function countSmileys that should return the total number of smiling faces.

# Valid smiley face examples: :) :D ;-D :~)
# Invalid smiley faces: ;( :> :} :]
#1
def count_smileys(arr)
    result = arr.select {|char| char =~ /[:;][-~]?[)D]/ }
    result.size
end

p "total no of smiles #{count_smileys([":D",":~)",";~D",":",";-D"])} " 


# "All of the animals are having a feast! Each animal is bringing one dish. There is just one rule: the dish must start and end with the same letters as the animal's name.
#  For example, the great blue heron is bringing garlic naan and the chickadee is bringing chocolate cake."

def feast(beast, dish)
    beast[0] == dish[0] &&  beast[-1] == dish[-1] 
end

p feast("lion", "bread") 
p feast("great blue heron", "garlic naan")




# You are given the length and width of a 4-sided polygon. The polygon can either be a rectangle or a square.
# If it is a square, return its area. If it is a rectangle, return its perimeter.

# Example(Input1, Input2 --> Output):

# 6, 10 --> 32
# 3, 3 --> 9
def area_or_perimeter(l , w)
    l == w ? l*w : 2*(l+w)
end

p "if square #{(area_or_perimeter(4 , 4))}"
p "if rectangle #{(area_or_perimeter(6 , 10))}"



# Question: Write a Ruby program that takes an array of elements and returns a hash containing the frequency count of each element.
  
def frequency_count(arr)
    frequency_hash = Hash.new(0)
    arr.each { |item| frequency_hash[item] += 1}
    frequency_hash
end
  
arr = [1, 2, 3, 1, 2, 3, 4, 5,7,7,8,2,3]
result = frequency_count(arr)
p result


# Question: Write a Ruby program that takes a sentence as input and returns a hash containing the frequency count of each word (case-insensitive).

def word_frequency(sentence)
    words = sentence.downcase.split
    frequency_hash = Hash.new(0)
    words.each { |word| frequency_hash[word] += 1 }
    frequency_hash
end
  
  
sentence = "Ruby is a beautiful language. Ruby is so powerful."
results = word_frequency(sentence)
puts results


# Question: Write a Ruby program that groups anagrams from a list of words.
def grouped_anagram(words)
    anagrams = Hash.new {|hash, key| hash[key] =[]}
    words.each {|word| anagrams[word.chars.sort.join]<< word}
    anagrams.values
end
words = ['cat','act', 'dog', 'god', 'listen']
p grouped_anagram(words)

#Question: check if string is a palindrome
def palindrome(str1)
    str2 = str1.reverse
     str1== str2
end

p " example 1 #{palindrome("aaabbbaaa")}"
p " example 2 #{palindrome("sing a song")}"

#Question: check dulplicates in a array

def check_for_duplications(arr)
    duplicate_arr = Hash.new(0)
    duplicate_ones = arr.select{ |ele| (duplicate_arr[ele] +=1) >1 }
    duplicate_arr.uniq
end

arr = [1,1,2,3,10,25,41,10]
p check_for_duplications(arr)

