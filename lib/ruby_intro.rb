# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  s = 0
  arr.each do |x|
    s += x
  end
  s
end

def max_2_sum(arr)
  if arr.length == 0
    0
  elsif arr.length == 1
    arr[0]
  else
    sorted_arr = arr.sort
    sorted_arr[-1] + sorted_arr[-2]
  end
end

def sum_to_n?(arr, n)
  0.upto(arr.length - 1) do |x|
    t = arr.length - x
    1.upto(t - 1) do |y|
       return true if arr[x] + arr[x + y] == n
      end
  end
  false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant?(s)
  return false unless s[0] =~ /[a-z]/i
  return false if s[0] =~ /[aeiou]/i
  true
end

def binary_multiple_of_4?(s)
  return false unless s =~ /^(0|1)+$/
  return false unless s =~ /.*0{2}$/ || s == '0'
  true
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    raise(ArgumentError) if isbn == '' || price <= 0
    @isbn = isbn
    @price = price
  end

  def isbn
    @isbn
  end

  def isbn=(isbn)
    @isbn = isbn
  end

  def price
    @price
  end

  def price=(price)
    @price = price
  end

  def price_as_string
    format("$%.2f", @price)
  end
end
