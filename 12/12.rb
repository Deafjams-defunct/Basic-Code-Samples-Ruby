class Integer

  def number_of_divisors
    
    divisors = 0
    
    if Math.sqrt(self).is_a? Integer then divisor += 1 end #Perfect squares have sqrt(self) as a divisor
    
    (1..Math.sqrt(self).floor - 1).each do |n| #Cycling through all digits 
      
      if self % n == 0 then divisors += 2 end #Each divisor below sqrt(self) has a paired divisor above sqrt(self), so we add two divisors.
      
    end
    
    return divisors
    
  end

end

triangle_number = 0
index = 1
solution = 0

while solution == 0
  
  triangle_number += index #Actually generating out triangle number
  index += 1 #Triangle numbers increment by 1, 2, 3..., so keep track of that.
  
  if triangle_number.number_of_divisors > 500 then solution = triangle_number end #If we have more than 500 divisors, we did it!
  
end

p solution #76576500