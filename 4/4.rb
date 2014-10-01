class Integer
  
  #Digitwise reverse of an integer
  def reverse
    
    base = self
    reversed = 0
    
    while base > 0 #We're doing integer division on positive numbers, base will be 0 eventually
      reversed *= 10 #Move the previous digit one place to the left
      reversed += base % 10 #Take the last digit off of base and place at the end of our reversed int
      base /= 10 #Cut the last digit off of base (or turn base to 0)
    end
    
    return reversed
    
  end
  
  #Uses our reverse to check if we have a palindrome
  def is_palindrome?
    
    if self == self.reverse then return true else return false end
    
  end
  
end

solution = 0

(900..999).each do |n| #Based no the example given, we can assume we'll run into the largest late into the 3 digit numbers
  
  (900..999).each do |m|
    
    if (n*m).is_palindrome? then solution = n*m end #If we find out
    
  end
  
end

p solution #906609