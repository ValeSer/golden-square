class Diary
  def initialize
    @entries = []
  end

  def add(entry) 
     @entries << entry
  end

  def all
    @entries
  end

  def count_words
    return @entries.sum(&:count_words)
  end

  def reading_time(wpm) 
    fail "Reading speed must be above zero" unless wpm.positive?
    return (count_words / wpm.to_f).ceil
  end

  def find_best_entry_for_reading_time(wpm, minutes)
    readable_entries = @entries.filter do |entry|
      entry.reading_time(wpm) <= minutes
    end
    return readable_entries.first
  end
end
