require 'grammar_checker'

describe 'grammar_checker' do
  it 'returns empty string if no argument' do
    expect(grammar_checker('')).to eq ''
  end

  it 'returns capitalised text' do
    expect(grammar_checker('we')).to eq 'We.'
  end

  it 'returns "." at the end of the text' do
    expect(grammar_checker('we')).to eq 'We.'
  end

  it 'returns "We are happy to have you here."' do
    expect(grammar_checker('we are happy to have you here')).to eq 'We are happy to have you here.'
  end

  it 'raises Invalid string' do
    expect { grammar_checker(45959) }.to raise_error 'Invalid string'
  end

end
