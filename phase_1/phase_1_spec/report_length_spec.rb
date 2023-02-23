require 'report_length'

RSpec.describe 'report_length method' do
  it 'returns string length' do
    expect(report_length('hello')).to eq "This string was 5 characters long."
  end
end