require 'counter'

RSpec.describe Counter do
  it 'returns 0 at the beginning' do
    counter = Counter.new 
    expect(counter.report).to eq 'Counted to 0 so far'
  end

  it 'returns 5 if 5 is added' do
    counter = Counter.new
    counter.add(5)
    expect(counter.report).to eq "Counted to 5 so far"
  end

  it 'returns error if not a number is passed' do
    counter = Counter.new
    expect {counter.add('hello')}.to raise_error(TypeError)
  end
end