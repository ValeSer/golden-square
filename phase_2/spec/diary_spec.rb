require 'diary'

describe Diary do
  it 'has initially an empty list of entries' do
    diary = Diary.new
    expect(diary.all).to eq []
  end
end