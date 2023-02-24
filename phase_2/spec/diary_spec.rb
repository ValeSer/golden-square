require 'diary'

describe Diary do
  it 'has initially an empty list of entries' do
    diary = Diary.new
    expect(diary.all).to eq []
  end
  
  it 'returns nil if no entry' do
    diary = Diary.new
    expect(diary.find_best_entry_for_reading_time(2, 1)).to eq nil
  end
end