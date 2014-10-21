require 'prime'

solution = []
consecutive_numbers = [647, 648, 649, 650] #We want to keep track of consecutive numbers. If we wanted to be more efficient, we could just store the first number and generate the next 3, but this method is simple and provides some good readability and direct link to the problem.

while solution.empty?
  
  if consecutive_numbers.map{|x| x.prime_division.length}.reduce(:+) == 16 then solution = consecutive_numbers end 
  #Lots going on! We factor the numbers, prime_division gives us an array of distinct prime factors, along with their powers. 
  #We just want how many prime factors there are, so we take the length. Then we sum the number of factors across the entire array.
  #This process could result in a false positive with say 4 + 5 + 3 + 4, and we could implement a check of each member of the array, but for this problem, this solution works.
    
  consecutive_numbers = consecutive_numbers.map{|x| x + 1}
  #Simply iterate our consecutive numbers. 
  #This could definitely be more advanced. Say, interating past the 'problematic' number which will cause 4 cases to fail when iterating by 1. 
  #That would introduce better efficiency, but at the cost of readability and simplicity. 
  #This just makes the code take a bit longer.
  
end

p solution #Given: [134043, 134044, 134045, 134046], solution: 134043