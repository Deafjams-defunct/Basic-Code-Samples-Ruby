solution = 0

class Integer #Toss this new method in the integer class cause that's where it belongs
#Checks if a number is prime by checking all possible divisors below sqrt(n).
#sqrt(n) as above this threshold, we'll simply get divisors that pair with divisors below sqrt(n)
  def is_prime?
  
    (2..Math.sqrt(self).floor + 1).each do |d|
      if self % d == 0 then return false end #If we found a factor, it's not prime.
    end
  
    return true #We found no factors below sqrt(n), so it's prime.
  
  end
  
end

#Now check for divisors of 600851475143 and their primality
(2..Math.sqrt(600851475143).floor + 1).each do |n|
  
  if 600851475143 % n == 0 and n.is_prime? then solution = n end #pick the largest one
  
end

p solution #6857