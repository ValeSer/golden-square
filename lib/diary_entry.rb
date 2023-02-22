class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
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
    @contents
    
  end

  private

  def count_words
    @contents.split(' ')
  end

end