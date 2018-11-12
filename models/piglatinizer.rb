class PigLatinizer

  def initialize
  end

  def piglatinize(phrase)
    phrase_array = phrase.split(" ")
    latinized = ""
    phrase_array.each do |word|
      if word.start_with?("a", "e", "i", "o", "u")
        word += "way"
      else
        word = word[1..-1] + word[0] + "ay"
      end
      latinized += word
    end
    latinized
  end
end
