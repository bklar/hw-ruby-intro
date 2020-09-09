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
  return (s =~ /^[b-df-hj-np-tv-z]/) || (s =~ /^[B-DF-HJ-NP-TV-Z]/)
end

def binary_multiple_of_4? s
  if s =~  /^[01]+(00)$/
    if s.contains?("1")
      return true
    else
      return false
    end
  else
    return false
  end
end

# Part 3
class BookInStock
  #we need the initialize function for the class
  def initialize(isbn,price)
    if (isbn.empty? || price<=0)
      raise ArgumentError.new("Invalid")
    else
      @isbn = isbn
      @price = price
    end
  end
  
  #standard getter setter conventions
  
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  def isbn=(value)
    @isbn = value
  end
  
  def price=(value)
    @price = value
  end
  
  def price_as_string
    "$#{'%.2f' % @price}"
  end
end