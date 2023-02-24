require 'diary'
require 'diary_entry'

describe 'Diary integration' do
  context 'returns a list of entries' do
    it '1 entry' do
      diary = Diary.new
      diary_entry = DiaryEntry.new('my_title', 'my_contents')
      diary.add(diary_entry)
      expect(diary.all).to eq [diary_entry]
    end
    it '2 entries' do
      diary = Diary.new
      diary_entry1 = DiaryEntry.new('my_title1', 'my_contents1')
      diary_entry2 = DiaryEntry.new('my_title2', 'my_contents2')
      diary.add(diary_entry1)
      diary.add(diary_entry2)
      expect(diary.all).to eq [diary_entry1, diary_entry2]
    end
  end

  describe 'word counting behaviour' do
    it 'counts words in all diary entries contents' do
      diary = Diary.new
      diary_entry1 = DiaryEntry.new('my_title1', 'my contents1')
      diary_entry2 = DiaryEntry.new('my_title2', 'my contents 2')
      diary.add(diary_entry1)
      diary.add(diary_entry2)
      expect(diary.count_words).to eq 5
    end

  end
  describe 'reading time behaviour' do
    it 'calculates the reading time for all the entries' do
      diary = Diary.new
      diary_entry1 = DiaryEntry.new('my title1', 'my contents 1')
      diary_entry2 = DiaryEntry.new('my title 2', 'my contents 2')
      diary.add(diary_entry1)
      diary.add(diary_entry2)
      expect(diary.reading_time(2)).to eq 3
    end
    it 'calculates the reading time when it falls over a minute' do
      diary = Diary.new
      diary_entry1 = DiaryEntry.new('my title1', 'my contents')
      diary_entry2 = DiaryEntry.new('my title 2', 'my contents 2')
      diary.add(diary_entry1)
      diary.add(diary_entry2)
      expect(diary.reading_time(2)).to eq 3
    end

    it 'fails if wpm is 0' do
      diary = Diary.new
      diary_entry = DiaryEntry.new('my title1', 'my contents 1')
      diary.add(diary_entry)
      expect { diary.reading_time(0)}.to raise_error "Reading speed must be above zero"
    end
  end

  describe 'best reading time entry behaviour' do
    it 'returns 1 entry if 1 passed and enough time' do
      diary = Diary.new
      diary_entry = DiaryEntry.new('my title', 'my contents')
      diary.add(diary_entry)
      expect(diary.find_best_entry_for_reading_time(2, 1)).to eq diary_entry
    end
    it 'returns nil if 1 entry passed and not enough time' do
      diary = Diary.new
      diary_entry = DiaryEntry.new('my title', 'my contents longer')
      diary.add(diary_entry)
      expect(diary.find_best_entry_for_reading_time(2, 1)).to eq nil
    end
 end
end