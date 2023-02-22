class GrammarStats
  def initialize
  end

  def check(text)
    if text == '' || text != text.capitalize.include?('.')
      return false
    end
  end




end