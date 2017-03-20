=begin
Simple Search Algorithm
loop through the array by element and compare if the integer exists in that element, if so then break and return the index of that element or nil if not found
=end


def search_array(arr, integer)
  position = 0

  arr.each{|value|
    if value == integer
      return position
    end  
    position += 1
  }
  nil
end

arr = [42, 89, 23, 1]
p search_array(arr,23)


=begin
Calculate Fibonacci Sequence
generate an array containing n number of Fibonacci numbers. Add new elements in the nth position that are equal to the sum of the elements at the -1 and -2 index.
=end

def fib(n)
  if(n<=1)
    return [0]
  elsif(n==2)
    return [0,1]
  end
  fib_arr=[0,1]
(n-2).times do fib_arr<<fib_arr[-1]+fib_arr[-2]  end  
  fib_arr
end

p fib(100)[-1]==218922995834555169026


=begin
Create Insertion Sort
=end

def insertionSort(arr)
  (1..arr.size-1).each do |i|
    while (i>0 && arr[i-1]<arr[i])
      arr[i-1],arr[i]=arr[i],arr[i-1]
      i-=1
    end
  end
  arr
end

=begin
Create Bubble Sort
=end

def bubbleSort(arr)
   while true
   swapped=false
    (1..arr.size-1).each do |i|
      if arr[i-1]>arr[i]
        arr[i-1],arr[i]=arr[i],arr[i-1]
        swapped=true
      end
    end
    break if swapped
  end
  arr
end


arr=[11,2,3,5,7]
p insertionSort(arr)
p bubbleSort(arr)



