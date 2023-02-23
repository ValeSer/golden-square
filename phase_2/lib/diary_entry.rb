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
     return words.length
  end

  def reading_time(wpm) 
    fail "Reading speed must be above zero" unless wpm.positive?
    return (count_words / wpm.to_f).ceil
  end

  def reading_chunk(wpm, minutes)
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

  def count_words
    @contents.split(' ')
  end

end