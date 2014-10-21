solution_array = []

(2..100).each do |n|
  
  solution_array += (2..100).map{|m| n**m} #Generate an array of the numbers of the form n^(2..100), attach them onto the end of all the previous numbers.
  
end

p solution_array.uniq.length #Choose only the unique members of the array, count them. Solution: 9183