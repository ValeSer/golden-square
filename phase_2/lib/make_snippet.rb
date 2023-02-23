def make_snippet(string)
  words = string.split(' ')
  if words.length <= 5 
    return string
  else
    five_words = words[0,5].join(' ') + '...'
  end
end