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
    best_entry = nil
    readable_entries = @entries.each do |entry|
      if entry.reading_time(wpm) <= minutes && 
        (best_entry == nil || entry.count_words > best_entry.count_words)
         
        best_entry = entry
      end
    end
    return best_entry
  end
end
