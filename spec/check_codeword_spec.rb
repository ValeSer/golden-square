require 'check_codeword'

RSpec.describe 'check_codeword method' do
  it 'returns a wrong message if given the wrong codeword' do
    result = check_codeword('yellow')
    expect(result).to eq 'WRONG!'
  end
end