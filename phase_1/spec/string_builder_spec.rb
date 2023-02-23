require 'string_builder'

RSpec.describe StringBuilder do
  it 'returns an empty string initially' do
    string = StringBuilder.new
    expect(string.output).to eq ''
  end

  it 'concatenates strings' do
    string = StringBuilder.new
    string.add('hi')
    expect(string.output).to eq 'hi'
  end

  it 'concatenates 2 strings' do
    string = StringBuilder.new
    string.add('hi')
    string.add(' Vale')
    expect(string.output).to eq 'hi Vale'
  end
   
  it 'size is 0 initially' do
    string = StringBuilder.new
    expect(string.size).to eq 0
  end

  it 'size 2 returned when hi is added' do
    string = StringBuilder.new
    string.add('hi')
    expect(string.size).to eq 2
  end

  it 'returns size of concatenated strings' do
    string = StringBuilder.new
    string.add('hi')
    string.add(' Vale')
    expect(string.size).to eq 7
  end
end