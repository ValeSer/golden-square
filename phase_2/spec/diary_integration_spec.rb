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
  end

end