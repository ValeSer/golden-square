require 'counter'

RSpec.describe Counter do
  it 'returns 0 at the beginning' do
    counter = Counter.new 
    expect(counter.report).to eq 'Counted to 0 so far'
  end
end