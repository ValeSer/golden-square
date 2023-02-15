require 'count_words'

RSpec.describe 'count_words' do
  it 'returns 0 in case of empty string' do
    expect(count_words('')).to eq 0
  end

  it 'returns 5 if a string of 5 words is passed' do
    expect(count_words('Hello world')).to eq 2
  end
end