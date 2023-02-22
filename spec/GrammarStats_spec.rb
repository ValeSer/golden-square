require 'GrammarStats'

describe GrammarStats do
  describe "#check(text)" do
    it 'returns false with empty string' do
      grammar_stats = GrammarStats.new
      expect(grammar_stats.check('')).to eq false
    end
  end
end
  