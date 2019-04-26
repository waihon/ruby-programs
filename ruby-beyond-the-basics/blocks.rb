def map_words(input)
  results = []
  input.split.each do |word|
    results << yield(word)
  end
  results
end

if __FILE__ == $0
  words = map_words("My name is Waihon") do |word|
    word.size
  end
  p words
end
