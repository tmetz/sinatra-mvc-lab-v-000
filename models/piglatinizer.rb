class PigLatinizer

  def initialize
  end

  def piglatinize(phrase)
    phrase_array = phrase.split(" ")
    latinized = ""
    phrase_array.each do |word|
      if word.start_with?("a", "A", "e", "E", "i", "I", "o", "O", "u", "U")
        word += "way"
      else
        word = word[1..-1] + word[0] + "ay"
      end
      latinized += word
    end
    latinized
  end
end
