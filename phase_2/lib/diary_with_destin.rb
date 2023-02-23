class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
    @furthest_word_read = 0
  end

  def title
    return @title
  end

  def contents
    return @contents
  end

  def count_words
    words.length
  end

  def reading_time(wpm) # wpm is an integer representing the number of words the
                        # user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # for the contents at the given wpm.
      fail "Reading speed must be above zero" if wpm == 0 
      return (words.length/wpm.to_f).ceil

  end

  def reading_chunk(wpm, minutes) # `wpm` is an integer representing the number
                                  # of words the user can read per minute
                                  # `minutes` is an integer representing the
                                  # number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
    words_we_can_read = wpm * minutes
   
    if @furthest_word_read > words.length
      output = words[0, words_we_can_read].join(" ")
    else
      start_point = @furthest_word_read
      end_point  = @furthest_word_read + words_we_can_read
      output = words[start_point,end_point]
      @furthest_word_read = end_point
      return output.join(" ")
    end

  end

  private 

  def words 
      @contents.split(" ")
  end
end