require 'time_tracker'

RSpec.describe 'time_tracker' do
  it 'returns "0 minutes and 0 seconds" when empty string' do
    expect(time_tracker('')).to eq '0 minutes and 0 seconds'
  end

  it 'returns "0 minutes and 1 second" when 5 words' do
    expect(time_tracker('A sentence with five words')).to eq '0 minutes and 1 seconds'
  end
end