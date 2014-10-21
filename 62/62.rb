sorted_cubes = (1..10000).map{|x| (x**3).to_s.chars.sort.join}
#Make an array with elements 1 to 10,000. Cube each element. 
#Convert each elment to a digit array, sort the array. Example: 240782 -> '022478'
#Convert digit array into a string.

solution_index = sorted_cubes.each_index.detect{|x| sorted_cubes.count(sorted_cubes[x]) == 5}
#Now find the first index of the number that appears five times in the array.
#By sorting the array, we removed the need to actually permute and check each number to find our solution.
#Instead, numbers that are permutations of each other appear as the same number (string) in our array.

p (solution_index + 1)**3 #Since we just have an index, we need to re-cube the number after iterating it (our array indices start at 0, array starts at 1.)
#Solution: 127035954683