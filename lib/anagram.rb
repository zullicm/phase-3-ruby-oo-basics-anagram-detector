class Anagram
  attr_accessor :word
  def initialize word
    @word = word
  end
  def match array
    matching_words = array.filter do |word|
      @word.chars.sort == word.chars.sort
    end
  end
end