#Using Binet's Formula
def calculate_fibonacci_number n
  
  return ((1.618033988749895**n - (-0.6180339887498949)**n) / 2.23606797749979).floor
  
end

solution = 0

#Fibonacci numbers grow fast so we don't have to loop for very long
(1..50).step(1) do |n|
  
  fib_number = calculate_fibonacci_number n
  
  #Checking if our calculated number is lower than 4 million and even, if so, adding to our solution
  if fib_number < 4000000 and fib_number.even? then solution += fib_number end
  
end

p solution #4613732