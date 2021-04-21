class Book

  attr_writer :title

  def initialize
    @title = ""
  end  

  def title

    output_string = ""
    little_words = ["and", "the", "in", "of", "an", "a"]

    @title.split.each_with_index do |word, index|
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

end
