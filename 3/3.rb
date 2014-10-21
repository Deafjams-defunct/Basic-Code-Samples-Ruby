require 'prime' #To check if our number is Prime

solution = 0

#Now check for divisors of 600851475143 and their primality
(2..Math.sqrt(600_851_475_143).floor + 1).each do |n|
  
  if 600_851_475_143 % n == 0 and n.prime? then 
    
    solution = n 
  
  end #pick the largest one
  
end

p solution #6857