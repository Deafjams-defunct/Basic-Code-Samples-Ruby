class Integer
  
  def factorial #Ruby has no built in factoial function. This one is fairly fast for this case.
    
    return (1..self).reduce(:*) 
    
  end
  
end

p 100.factorial.to_s.chars.map(&:to_i).inject(:+) #648. Take the factorial, convert it to an array of one character strings, map the elements of the array to integers, sum the elements of the array.