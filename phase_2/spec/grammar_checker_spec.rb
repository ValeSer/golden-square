require 'grammar_checker'

describe 'grammar_checker method' do
  it 'returns this is an empty string' do
    result = grammar_checker('')
    expect(result).to eq "This is an empty string!"
  end

  it "has no punctuation or capital" do
    expect(grammar_checker("a new string")).to eq "This has no capital, and no punctuation."
  end

  it "has capital but no punctuation" do
    expect(grammar_checker("Capital string")).to eq "Almost there, you have a capital but are missing punctuation."
  end

  it "has a question mark but no Capital" do
    expect(grammar_checker("this is a question?")).to eq "Almost there, you have suitable punctuation, but no capital."
  end

  it 'raises error for Invalid input' do
    expect { grammar_checker(123) }.to raise_error "Invalid input"
  end

  it "text is grammatically correct" do
    expect(grammar_checker("Correct!")).to eq "Very good! You are the best at grammar!"
  end
end