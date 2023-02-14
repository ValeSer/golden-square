require 'greet'

RSpec.describe 'greet method' do
  it 'greets a given user' do
    result = greet('Vale')
    expect(result).to eq 'Hello, Vale!'
  end
end