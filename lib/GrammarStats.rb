class GrammarStats
  def initialize
    @total_checked = 0
    @passed = 0
  end

  def check(text)
    result = text.match?(/^[A-Z].*[.?!]$/)
    @total_checked +=1
    if result then @passed += 1 end
    return result
  end

  def percentage_good
    if @total_checked != 0
      @passed * 100 / @total_checked 
    else 
      0
    end
  end



end