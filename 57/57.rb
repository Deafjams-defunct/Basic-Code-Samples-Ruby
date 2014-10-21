require 'Rational'

solution = 0

def continued_fraction_iterations n 
  #A super lazy continued fraction calculator
  
  if n == 1 then return 2 + Rational(1, 2) end #
  
  return 2 + Rational(1, continued_fraction_iterations(n - 1))  
  
end

(1..999).each do |n| #Yeah, we're just gonna generate all the the continued fractions again because it's quick and I'm lazy
  
  iteration = 1 + Rational(1, continued_fraction_iterations(n))
  
  if iteration.numerator.to_s.length > iteration.denominator.to_s.length then solution += 1 end #Check the lengths, if we get a longer numerator, mark it!
  
end

p solution #153