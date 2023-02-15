def find_missing(sequence)
  consecutive     = sequence.each_cons(2)
 
  differences     = consecutive.map { |a,b| b + a }

 
  sequence        = differences.max_by { |n| differences.count(n) }
  
  missing_between = consecutive.find { |a,b| (b - a) != sequence }

  missing_between.first + sequence 
end

puts find_missing([2,4,6,10]) # should be 8
puts find_missing([3,6,9,15]) # should be 12
puts find_missing([1,2,3,5]) # should be 4