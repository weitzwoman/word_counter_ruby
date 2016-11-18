class String
  define_method(:word_count) do |input_sentence|
    counter = 0
    sentence = input_sentence.downcase.split(" ")
    sentence.each() do |input_word|
      if word = self.downcase()
        counter = sentence.count(word)
      end
    end
    counter
  end
end
