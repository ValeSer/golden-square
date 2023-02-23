def get_most_common_letter(text)
  
  counter = Hash.new(0)
  text.chars.each do |char|
    unless char == ' ' then counter[char] += 1 end
  end
  puts counter
  p counter.to_a
  p counter.to_a.sort_by { |k, v| v }
  return counter.to_a.sort_by { |k, v| v }[-1][0]
  

end

# Intended output:
# 
puts get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"
