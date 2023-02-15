
def time_tracker(text)
  words = text.split(' ').length
  if words == 0
    return "0 minutes and 0 seconds"
  else
    minutes = words / 200
    seconds = (words % 200)* 60 / 200
    return "#{minutes} minutes and #{seconds} seconds"
  end
end