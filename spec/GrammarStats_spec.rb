require 'GrammarStats'

describe GrammarStats do
  describe "#check(text)" do
    it 'returns false with empty string' do
      grammar_stats = GrammarStats.new
      expect(grammar_stats.check('')).to eq false
    end

    it 'returns false with not capitalize' do
      grammar_stats = GrammarStats.new
      expect(grammar_stats.check('hello')).to eq false
    end

    it 'returns false with no punctuation mark' do
      grammar_stats = GrammarStats.new
      expect(grammar_stats.check('Hello')).to eq false
    end

    it 'returns false with no punctuation mark' do
      grammar_stats = GrammarStats.new
      expect(grammar_stats.check('hello?')).to eq false
    end

    it 'returns true with punctuation mark and capitalize' do
      grammar_stats = GrammarStats.new
      expect(grammar_stats.check('Hello?')).to eq true
    end

    describe '#percentage_good' do 
      it 'returns 0 if no check called' do
        grammar_stats = GrammarStats.new
        expect(grammar_stats.percentage_good).to eq 0
      end

      it 'returns 0 if no check passed' do
        grammar_stats = GrammarStats.new
        grammar_stats.check('hello')
        expect(grammar_stats.percentage_good).to eq 0
      end
      it 'returns 100 if 1 check passed' do
        grammar_stats = GrammarStats.new
        grammar_stats.check('Hello!')
        expect(grammar_stats.percentage_good).to eq 100
      end
      it 'returns 100 if all check passed' do
        grammar_stats = GrammarStats.new
        grammar_stats.check('Hello!')
        grammar_stats.check('Hello!')
        grammar_stats.check('Hello!')
        expect(grammar_stats.percentage_good).to eq 100
      end

      it 'returns 0 if none check passed' do
        grammar_stats = GrammarStats.new
        grammar_stats.check('hello')
        grammar_stats.check('hello')
        grammar_stats.check('hello')
        expect(grammar_stats.percentage_good).to eq 0
      end

      it 'returns 33 if 1/3 passed' do
        grammar_stats = GrammarStats.new
        grammar_stats.check('Hello!')
        grammar_stats.check('hello!')
        grammar_stats.check('Hello')
        expect(grammar_stats.percentage_good).to eq 33
      end
    end

    
  end
end
  