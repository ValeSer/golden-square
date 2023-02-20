require 'diary_entry'

describe DiaryEntry do
  it 'constructs' do
    diary_entry = DiaryEntry.new('my_title', 'my_contents')
    expect(diary_entry.title).to eq "my_title"
    expect(diary_entry.contents).to eq "my_contents"
  end

  describe '#count_words' do
    it 'Returns the number of words' do
      diary_entry = DiaryEntry.new('my_title', '')
      expect(diary_entry.count_words).to eq 0
    end
  end
end
