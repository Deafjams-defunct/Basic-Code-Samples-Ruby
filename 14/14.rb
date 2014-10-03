number_with_largest_sequence_length = 0
max_sequence_length = 0

(500000..999999).each do |n| #Start big!
  
  current_n = n
  sequence_length = 0
  
  while current_n > 1 #We're reducing this by integer division, so current_n will be 1 eventually
    
    if current_n.odd? then #do the Collatz sequence
      
      current_n = 3*current_n + 1
      
    else
      
      current_n /= 2
      
    end
    
    sequence_length += 1 #Since we're still going, we have a longer sequence length
    
  end
  
  if sequence_length > max_sequence_length then #We got a new long sequence!
    
    max_sequence_length = sequence_length
    number_with_largest_sequence_length = n 
  
  end
  
end

p number_with_largest_sequence_length #837799