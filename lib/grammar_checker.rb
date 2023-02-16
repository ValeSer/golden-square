def grammar_checker(text)
  raise 'Invalid string' unless text.is_a?(String)
  text = text.capitalize
  text == '' ?  text : text + '.'
end