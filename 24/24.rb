class Array

  def lexicographic_permute #This in an implementation of the algorithm listed here http://en.wikipedia.org/wiki/Permutation#Generation_in_lexicographic_order
    
    _self = self
    
    i = 0
    k = -1
    
    while i < self.length - 1
      if self[i] < self[i + 1] then k = i end
      i += 1
    end
    
    if k == -1 then return self end
    
    i = k + 1
    l = k + 1
    
    while i < self.length
      
      if self[i] > self[k] then l = i end
      i += 1
      
    end
    
    _self[k], _self[l] = _self[l], _self[k] #swap self[l] and self[k]
    
    temp_array = _self[0..k]
    
    _self = _self.drop(k + 1).reverse
    _self = temp_array + _self
    
    return _self
    
  end

end

x = [0,1,2,3,4,5,6,7,8,9]

999999.times {x = x.lexicographic_permute} #Just perform lexicographic permutations on the array until we get to the 1,000,000th permutation, then we're done!

p x #2783915460, given: [2, 7, 8, 3, 9, 1, 5, 4, 6, 0]
