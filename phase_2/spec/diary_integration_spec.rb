require 'diary'
require 'diary_entry'

describe 'Diary integration' do
  it 'returns a list of entries' do
    diary = Diary.new
    diary_entry = DiaryEntry.new('my_title', 'my_contents')
    diary.add(diary_entry)
    expect(diary.all).to eq [diary_entry]
  end

end