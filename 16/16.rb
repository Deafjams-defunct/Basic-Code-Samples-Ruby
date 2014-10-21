p (2**1000).to_s.chars.map(&:to_i).reduce(:+) #1366

#Lots of type changing here. First, calculate our number into a BigNum, convert that to a string, split each character of the string into an array, map to each element of the array to an integer (they're 1 digit now, so Fixnum can hold them), then sum the elements of the array. Runs in a few milliseconds.