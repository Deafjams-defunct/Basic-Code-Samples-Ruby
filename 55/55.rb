class Integer

  def reverse #Digitwise reverse of an integer
    
    base = self
    reversed = 0
    
    while base > 0 #We're doing integer division on positive numbers, base will be 0 eventually
      reversed *= 10 #Move the previous digit one place to the left
      reversed += base % 10 #Take the last digit off of base and place at the end of our reversed int
      base /= 10 #Cut the last digit off of base (or turn base to 0)
    end
    
    return reversed
    
  end
  
  
  def is_palindrome? #Uses our reverse to check if we have a palindrome
    
    if self == self.reverse then return true else return false end
    
  end
  
  def is_lychrel? #Builds on the previous methods to check if a numbe of Lychrel
    
    _self = self #We want a modifiable version of our self
    iteration = 0 #Our condition for knowing if a number is Lychrel is based on giving up after a certain number of iterations
    
    while iteration < 50 #All numbers that aren't Lychrel, below 10,000, require less than 50 iterations to generate a palindrome. So, we can safely stop iteration before that.
    
      sum = _self + _self.reverse #Add in the Lychrel way.
    
      if sum.is_palindrome? then return false end #If we have a palindrome, the number isn't Lychrel. So, we're done.
    
      iteration += 1
      _self = sum #We need to try again, so iterate again with our summed numbers.
      
    end
    
    return true #We found a Lychrel number! Hooray!
    
  end
  
end

solution = 0

(1..10000).each do |n|
  
  if n.is_lychrel? then solution += 1 end #Check our number is Lychrel, if it is, iterate and celebrate!
  
end

p solution #249