
class PigLatinizer

  attr_accessor :text
  def initialize
    #@text = text
  end

  def piglatinize(text_)
    text = text_
    cons = text[/[aeiouAEIOU/]]
    cons
  end
end
