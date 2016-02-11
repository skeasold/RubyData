sentence = "Tacos must not have lettuce Only meat and cheese and salsa"
words = sentence.split(" ")

five_character_words = words.select do |word|
  word.length == 5
end

puts five_character_words
