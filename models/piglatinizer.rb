class PigLatinizer

  def initialize(phrase)
    @phrase = phrase
  end

  def to_pig_latin
    phrase_array = @phrase.split(" ")
    latinized = ""
    phrase_array.each |word| do
      if word.start_with?("a", "e", "i", "o", "u")
        word += "way"
      else
        word = word[1:] + word[0] + "ay"
      end
      latinized += word
    end
    latinized
  end
end
