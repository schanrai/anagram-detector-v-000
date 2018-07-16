class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  #need to iterate over the array of words that the .match method takes as an argument.
  #split word into an array of letters using some_word.split("") and compare =>[1, 2, 3] == [1, 2, 3]
  #Remember that you can .sort an arrays elements. This will help in your comparison:
  #It should return all matches in an array. If no matches exist, it should return an empty array.
#match diaper to [hello world zombies pants dipper]
def match(word_array)
  some_word = @word.split("").sort
  result = []
  word_array.select do | element |
     element.split("").sort == some_word
  end
end
