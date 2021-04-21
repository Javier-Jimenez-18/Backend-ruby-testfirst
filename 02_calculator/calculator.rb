# "add" method takes two parameters and adds them together
def add(x, y)
    x + y
end

# "subtract" method takes two parameters and subtracts the second from the first
def subtract(x, y)
    x - y
end

# "sum" method takes an *array* of parameters and adds them all together
# if the array is empty, return 0
def sum(num_array)
    return 0 if (num_array.length == 0)
    num_array.inject { |sum, element| sum += element }
end

# "multiply" method takes n parameters and multiplies them together
def multiply(*n)
    product = 1
    n.each do |num|
      product *= num
    end
    product
end

# "power" method takes two parameters which raises one parameter to the power of another parameter
def power(x, y)
    x ** y
end

# "factorial" method takes a parameter and returns the factorial of the parameter
# 0! = 1
def factorial(n)
  return 1 if n == 0
  (1..n).inject {|product, n| product * n }
end
