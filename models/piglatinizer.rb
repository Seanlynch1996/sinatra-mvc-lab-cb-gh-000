
class PigLatinizer

  attr_accessor :text
  def initialize
    #@text = text
  end

  def piglatinize(text_)
    #text = @text
    text = text_
    text[text.length] = text[0]

    i = 0
    len = text.length
    while i < len - 1
      text[i] = text[i+1]
      i += 1
    end
    text[len - 1] = "way"
    text
  end
end
