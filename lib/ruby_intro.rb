# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  total=0
  arr.each do |element|
    total += element
  end
  return total
end

def max_2_sum arr
  if arr.length()==0
    return 0
  end
  if arr.length() == 1
    return arr[0]
  end  
  arr.sort!
  return arr[-1]+arr[-2]
end

def sum_to_n? arr, n
  if (arr.length()==0)|(arr.length()==1)
    return false
  end
  for i in 0..arr.length()-1
    for j in i+1..arr.length()-1
      if arr[i]+arr[j] == n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  if s.length()==0
    return false
  end
  return s =~ /^[b-df-hj-np-tv-z]/
end

def binary_multiple_of_4? s
  return s =~  /^[1]*(00)$/
end

# Part 3
class BookInStock
  
end