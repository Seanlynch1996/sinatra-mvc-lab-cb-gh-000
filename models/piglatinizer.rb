
class PigLatinizer

  attr_accessor :text
  def initialize
    #@text = text
  end

  def piglatinize(text_)
    text = text_
    cons = 0
    if text.length == 1 || text[0] =~ /aeiouAEIOU/
      cons = 0
    elsif text[1] =~ /aeiouAEIOU/
      cons = 1
    else
      cons = 2
    end


    text[text.length] = text[0]
    i = 0
    len = text.length
    while i < len - 1
      text[i] = text[i+1]
      i += 1
    end
    if text[len - 1] =~ /aeiouAEIOU/
      text[len - 1] = "way"
    else
      text[len - 1] = "ay"
    end
    text
  end
end
