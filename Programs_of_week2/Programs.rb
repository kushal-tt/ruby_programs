#Given array of integers(both +ve and -ve) find the two elements such that their sum is closest to given number x.

def closest_sum(a,x)
    a.sort!            
    left=min_l=0
    right=min_r=a.length-1
    min_sum = 1.0/0.0   
    while(left<right)
      sum=(a[left]+a[right])-x
      if sum.abs<min_sum
          min_sum=sum.abs
          min_l=left
          min_r=right
      end
      if sum<0
          left+=1
      else
          right-=1
      end
    end
      p " The two elements whose sum is minimum are #{a[min_l]} and #{a[min_r]}"   
  end
  
  closest_sum([1,3,2,4,5],6) 

#Bubble Sort Implementation , works by repeatedly swapping the adjacent elements if they are in wrong order)

def bubble_sort(a)
    n=a.length
    for i in 0...n-1 do
        swapped = false
        for j in 0...n-i-1 do
            if a[j]>a[j+1]
                temp = a[j]
                a[j] = a[j+1]
                a[j+1] = temp
                swapped = true
            end
        end
        if swapped == false
            break
        end
    end
    return a
 end
 p bubble_sort([10,25,6,2,88,21,11])

# Given a time in -hour AM/PM format, convert it to military (24-hour) time.
# Note: - 12:00:00AM on a 12-hour clock is 00:00:00 on a 24-hour clock.
# - 12:00:00PM on a 12-hour clock is 12:00:00 on a 24-hour clock.

# Example
# s= '12:01:00PM' Return '12:01:00'.
# s= '12:01:00PM' Return '00:01:00'.

def convert_time(time)
    if time[8,2]=="AM"
        if time[0,2]=="12"
            time[0,2]="00"
        end
        time[8,2]=""
    else
        unless time[0,2]=="12" 
            t=time[0,2].to_i
            time[0,2]=(t+12).to_s
        end       
        time[8,2]="" 
    end
return time
end

p convert_time('12:01:00PM')
p  convert_time('10:25:00PM')


#Given an array and a value, find if there is a triplet in array whose sum is equal to the given value.


def search_triplet(a,key)
    len=a.length
    a.sort!         
    for i in 0...len-1
        sum= key-a[i]
      	left=i+1
        right=len-1
        while(left<right)
            if a[left]+a[right]==sum
                return a[i],a[left],a[right]
            elsif a[left]+a[right]>sum
                right-=1
            else
                left+=1
            end
        end
    end
    return -1
end

p search_triplet([12, 3, 4, 1, 6, 9],25) # => [4, 9, 12]


#Given an array of length n contains elements from 0 to n-1, 
#Print all the duplicate elements in O(n) time and constant space.

def print_duplicates(a)
    n=a.length
    print "Duplicate elements are: "
    for i in 0...n
        if a[a[i].abs]<0
          print "#{a[i].abs} "
        else
            a[a[i].abs]= -a[a[i].abs]
        end
    end
  return
end
p print_duplicates([1, 4, 6, 4, 3, 6, 1])	
    

#Shell Sort implementation Diminishing Increment Sort


def shell_sort(a)
    n=a.length
    h=1
    
    while (h<n/3)  
        h= (3*h)+1
    end
    
    while h>=1
   
        for i in h...n
            j=i
            while j>=h
                if a[j-h]>a[j]
                    temp=a[j]
                    a[j]=a[j-h]
                    a[j-h]=temp
                end
                j-=h
            end
        end
        h/=3
    end
    
    return a   
end
p shell_sort([15,45,96,32,2,7])

#Given an unsorted array,Find a pair of elemens with given difference,if no such pair exists return -1.

def check_pair(a,x)
    len=a.length
    a.sort! 
    left=0
    right=len-1
    
    while left<right
        diff=a[right]-a[left]
      if diff==x.abs       
        return a[left],a[right]
      elsif diff>x.abs
        right-=1
      else
        left+=1
      end
    end
    
    return -1
end
p check_pair([5, 20, 3, 2, 50, 80],-78) 

#Given an array 'a',create a product array where product[i]==product of all elements except a[i]

def product_array(a)
    len=a.length
    product=Array.new(len,1) 
    temp=1

    for i in 0...len
        product[i]=temp
        temp*=a[i]
    end
    
    temp=1 
  
   
    for i in (len-1).downto(0)
        product[i]*=temp
        temp*=a[i]
    end
    
    return product
end

p product_array([1,2,3,4,5,6])  # => [720, 360, 240, 180, 144, 120]

#Given an array of random numbers, Push all the zero’s of a given array to the end of the array

    def move_zeros(a)
        len=a.length
        count=0
        for i in 0...len
            if a[i]!=0
                a[count]=a[i]
                count+=1
            end
        end

        while count<len
            a[count]=0
            count+=1
        end
        return a
    end
    
   p move_zeros([1,2,0,3,0,4,0,5,0,0,6]) # => [1, 2, 3, 4, 5, 6, 0, 0, 0, 0, 0]

#Given an array reverse it without using pre-defined methods
def reverse_array(a)
    right=a.length-1
    left=0
    while(left<right)
     
        temp=a[left]        # a[left],a[right]=a[right],a[left]
        a[left]=a[right]
        a[right]=temp
        
        left+=1
        right-=1
    end
    return a
end

p reverse_array([1,2,3,4,5])

#Selection Sort Implementation sorts an array by repeatedly finding the minimum element (considering ascending order) from unsorted part and putting it at the beginning.

def selection_sort(a)
    n=a.length
   for i in 0...n 
    for j in (i+1)...n
        if a[j]<a[i]
            a[j],a[i] = a[i],a[j]
        end
    end
   end
   return a
end
p selection_sort([52,67,2,1,45,99,8])

#Given an array of 0s and 1s in random order.Segregate 0s on left side and 1s on right side of the array.

def segregate(a)
    left=0
    right=a.length-1
    while left<right
         while a[left]== 0
             left+=1
         end
    
         while a[right]==1
             right-=1
         end

         if left<right
             a[left],a[right]=a[right],a[left]
             left+=1
             right-=1
         end
    end
     return a
end
p  segregate([1,0,1,1,0,0]) # => [0, 0, 0, 1, 1, 1]