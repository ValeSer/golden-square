require 'grammar_checker'

describe 'grammar_checker' do
  it 'returns empty string if no argument' do
    expect(grammar_checker('')).to eq ''
  end

  it 'returns capitalised text and "." at the end' do
    expect(grammar_checker('we')).to eq 'We'
  end

end
