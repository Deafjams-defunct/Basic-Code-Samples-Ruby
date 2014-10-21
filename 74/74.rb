class Integer
  
  @@chain_lengths = {1 => 1, 2 => 1, 145 => 1, 169 => 3, 871 => 2, 872 => 2, 40585 => 1}
  @@factorials = (0..9).map{|n| (1..n).reduce(:*) || 1}
  #Okay, we need a little persistence for this problem, otherwise it's impossible.
  #First, we want to make a lookup table of previous chain lengths, so that we can recurse down and get easy answers.
  #We add to this table as we go, expanding our base we can get constant time answers for.
  #We also store the 10 factorials we'll use exclusively in this program, this provides a nice speed up, about twice as fast as a basic factorial function.
  
  def factorial #Facade of a factorial function, we've just referencing things we already computed, but leaving this as a function for a clean map below.
    
    return @@factorials[self]
    
  end
  
  def factorial_chain_length #Recursively defined factorial chain function.
    
    if !@@chain_lengths[self] then #Check if we already have the solution for this chain.
      
      return @@chain_lengths[self] = 1 + self.to_a.map(&:factorial).reduce(:+).factorial_chain_length
      #We don't have the solution. So, this chain has length of 1 longer than the digital factorial sum of self.
      #Calculate that out with recursion, and store that in our lookup table.
      
    else
      
      return @@chain_lengths[self] #We have our solution, so just return it.
      
    end
    
  end
  
  def to_a 
    #Convert an integer into an digit array. 
    #This is faster than to_s.chars.map(&:to_i) for small numbers, which we are mostly working with.
    #The goal here is to take the last character off the end of a number with modulo, remove the last digit from the number by dividing by 10
    
    _self = self #We need to modify our number, so we'll make a make-shift self
    digitized_number = [] #Our digit array
    
    while _self > 0 #We're using integer division by 10, so we'll get to 0 eventually
      
      digitized_number << _self % 10 #Push the last digit of our number onto our digit array
      _self /= 10 #Take the last digit off our number
      
    end
    
    return digitized_number.reverse #Now we have a digit array that's reversed (if given 123, we have [3,2,1]). So, we need to reverse our array to get the correct representation of self.
    
  end
  
end

solution = 0

(1..999_999).each do |n|
  
  if n.factorial_chain_length == 60 then solution += 1 end #If the length of n's factorial chain is 60, mark that we found it and continue.
  
end

p solution #402, runs in 12 seconds.