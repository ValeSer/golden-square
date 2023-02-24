require 'diary'

class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
    @first_word_unread = 0
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
   
    if @first_word_unread > count_words
      @first_word_unread = 0
    end  
    start_point = @first_word_unread
    end_point  = @first_word_unread + words_we_can_read
    output = words[start_point,end_point]
    @first_word_unread = end_point
    return output.join(" ")  
  end

  private

  def words
    @contents.split(' ')
  end

end