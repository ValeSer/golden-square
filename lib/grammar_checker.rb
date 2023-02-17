def grammar_checker(text)
  raise "Invalid input" unless text.is_a?(String)
  return "This is an empty string!" if text == ''
  t = text.capitalize
  l = text.chars.last
  if text == t && l.match?(/[.?!]/)
    return "Very good! You are the best at grammar!"
  elsif text == t && text.match?(/[^.?!]/)
    return "Almost there, you have a capital but are missing punctuation."
  elsif text != t && l.match?(/[.?!]/)
    return "Almost there, you have suitable punctuation, but no capital."
  end

  unless text == t && l.match?(/[.?!]/)
    return "This has no capital, and no punctuation." 
  end
end