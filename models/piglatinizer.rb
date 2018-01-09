
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
    len = text.length
    res = ""
    while i < len - cons
      res[i] = text[i + cons]
      i += 1
    end
    if cons != 0
      res = res + str + "ay"
    else
      res = res + "way"
    end
    res
  end

  def to_pig_latin(text_)
    arr = text_.split
    res = ""
    i = 0
    num_words = count(arr)
    arr.each do |word|
      i += 1
      res = res + piglatinize(word)
      if i != num_words
        res = res + " "
      end
    end
    res
  end

end
