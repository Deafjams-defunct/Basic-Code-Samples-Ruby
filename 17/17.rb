require_relative 'humanize' #Don't reinvent the wheel! Use a library!

solution = 0

(1..1000).each do |n|
  
  solution += n.humanize.gsub(' ', '').sub('-', '').sub(',', '').length #Convert to words, strip out unwanted charactes, count the string length. That's how many letters we used.
  
end

p solution #21124