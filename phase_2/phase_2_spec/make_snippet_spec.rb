require 'make_snippet'

RSpec.describe 'make_snippet' do

  it 'returns an empty string' do
    expect(make_snippet('')).to eq ''
  end
    

  it 'returns the five words' do
    expect(make_snippet('one two three four five')).to eq 'one two three four five'
  end

  it 'returns the first five words' do
    expect(make_snippet('one two three four five six')).to eq 'one two three four five...'
  end
end
