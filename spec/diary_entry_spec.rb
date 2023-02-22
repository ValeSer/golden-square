require 'diary_entry'

describe DiaryEntry do
  it 'constructs' do
    diary_entry = DiaryEntry.new('my_title', 'my_contents')
    expect(diary_entry.title).to eq "my_title"
    expect(diary_entry.contents).to eq "my_contents"
  end

  describe '#count_words' do
    it 'Returns 0 with empty contents' do
      diary_entry = DiaryEntry.new('my_title', '')
      expect(diary_entry.count_words).to eq 0
    end
    it 'Returns 1 with a word in contents' do
      diary_entry = DiaryEntry.new('my_title', 'Something')
      expect(diary_entry.count_words).to eq 1
    end
  end

  describe '#reading_time' do
    it 'returns reading time in minutes' do
      diary_entry = DiaryEntry.new('my_title', 'one ' * 550)
      expect(diary_entry.reading_time(200)).to eq 3
    end
    it 'fails if wpm is 0' do
      diary_entry = DiaryEntry.new('my_title', 'one ' * 3)
      expect { diary_entry.reading_time(0)}.to raise_error "Reading speed must be above zero"
    end
  end
 
  describe '#reading_chunk' do
    context "with a contents readable within the time" do
      it "returns the full contents" do
        diary_entry = DiaryEntry.new('my_title', 'one two three')
        chunk = diary_entry.reading_chunk(200, 1)
        expect(chunk).to eq 'one two three'
      end
    context "with a contents unreadable within the time" do
      it "returns a readable chunk" do
        diary_entry = DiaryEntry.new('my_title', 'one two three')
        chunk = diary_entry.reading_chunk(2, 1)
        expect(chunk).to eq 'one two'
      end


    end

    end
 end
end