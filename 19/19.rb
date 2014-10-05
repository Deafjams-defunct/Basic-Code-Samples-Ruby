#Brute force method
require 'date'

number_of_sundays = 0

(1901..2000).each do |year| #Cycle through all the years we want
  
  (1..12).each do |month| #Cycle through all the months
    
    if Date.new(year, month, 1).sunday? then number_of_sundays += 1 end #If the first of this month is a Sunday, increase our sunday count!
    
  end
  
end

p number_of_sundays #171

#Mathy solution:
#There are 1,200 first of months in this century (100 years, 12 months a year), and there is a 1 in 7 chance that any given day in a sunday. So, there is a 1 in 7 chance that the first of the month is a sunday. Thus, floor(1200 / 7) = 171 would be a good estimate (and also happens to the the correct answer)