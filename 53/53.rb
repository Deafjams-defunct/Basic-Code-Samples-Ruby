class Integer
  
  def factorial #Ruby has no built in factoial function. This one is fairly fast for this case. Also used in Problem 20.
    
    return (1..self).reduce(:*) || 1
    
  end
  
  def choose r #Implementation of the combinatorial choose function.
    
    return self.factorial / (r.factorial * (self - r).factorial)

  end
  
end

solution = 0

(23..100).each do |n|
  
  (1..n - 1).each do |r|
    
    if n.choose(r) > 1_000_000 then solution += 1 end #Calculate and check if over 1,000,000. Super simple.
    
  end
  
end

p solution #4075