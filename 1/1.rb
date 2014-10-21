solution = 0

(1..999).each do |n|
  if n % 3 == 0 or n % 5 == 0 then solution += n end
end

p solution #233168

#Alternate:
solution = (3..999).step(3).reduce(:+) #All n % 3 == 0
solution += (5..999).step(5).reduce(:+) #All n % 5 == 0
solution -= (15..999).step(15).reduce(:+) #Remove all n % 15 == 0, as they were double counted

p solution #233168