
class PigLatinizer

  attr_accessor :text
  def initialize
    #@text = text
  end

  def piglatinize(text_)
    i = 0
    cons = 0
    text = text_
    text.each_char do |el|
      if (el == "a" || el == "e" || el == "i" || el == "o" || el == "u" || el == "A" || el == "E" ||
        el == "I" || el == "O" || el == "O")
        cons = i
        break
      end
      i += 1
    end
    str = ""
    if cons != 0
      str = text[0..cons - 1]
    end
    i = 0
    while i < cons
      text[i] = text[i + cons]
    end
    text

  end
end
