# You are given a number of sticks of varying lengths. You will iteratively cut the sticks into smaller sticks, discarding the shortest pieces until there are none left. 
# At each iteration you will determine the length of the shortest stick remaining, cut that length from each of the longer sticks and then discard all the pieces of that shortest length. 
# When all the remaining sticks are the same length,they cannot be shortened so discard them.
# Given the lengths of  sticks, print the number of sticks that are left before each iteration until there are none left.

# Example
# arr= [1,2,3]
# The shortest stick length is 1, so cut that length from the longer two and discard the pieces of length 1. Now the lengths are arr = [1,2] . 
# Again, the shortest stick is of length 1, so cut that amount from the longer stick and discard those pieces. There is only one stick left, so discard that stick. 
# The number of sticks at each iteration are answer = [3,2,1].

def cutTheSticks(arr)
    n = arr.length
    min= arr.min
    count = 1000
    while(count>1)
        count=0
        min2= 1000
        for i in 0...n
            if arr[i]>0
                count+=1
                arr[i]-=min
                min2 = arr[i] if (arr[i]<min2 && arr[i]>0)
            end
        end
        min=min2
     puts count if count > 0 
    end
end

cutTheSticks([5, 4, 4, 2, 2, 8])