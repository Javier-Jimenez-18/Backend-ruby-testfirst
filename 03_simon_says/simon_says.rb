# echo method takes a string parameter and outputs the string parameter
def echo(word)
  word
end

# shout method takes a string parameter and outputs the string parameter with all letters capitalized
def shout(word)
  word.upcase
end

# repeat method takes a string parameter and a default parameter n
# and outputs the string parameter n times
def repeat(word, n = 2)
  ("#{word} " * n).rstrip
end

# start_of_word method takes a string parameter and a parameter n
# and outputs the first n letters of the string parameter
def start_of_word(string, n)
  string[0,n]
end

# first_word method takes a string of words parameter
# and outputs the first word of the string parameter
def first_word(words)
#  word = ""
#  words.each_char { |char|
#    if char != " "
#      word << char
#    else
#      break
#    end
#  }
#  word
  words.split(" ").first
end

# titleize method takes a string of word(s) parameter
# and outputs the word(s) capitalized if it's the first word,
# a title, or if word(s) are not "little words"
def titleize(word_string)

  word_array = word_string.split
  output_string = ""
  little_words = ["and", "the", "in", "of", "an", "a"]

  word_array.each_with_index do |word, index|
    # capitalize the first word
    if (index == 0)
      output_string << "#{word.capitalize} "
    # do not capitalize "little words"
    elsif (little_words.include? word)
      output_string << "#{word} "
    # capitalize words that are NOT "little words" including i
    else
      output_string << "#{word.capitalize} "
    end
  end
  output_string.strip
end
