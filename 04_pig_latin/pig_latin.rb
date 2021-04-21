# define translate method that takes a string parameter and converts it to Pig Latin
def translate(string)
    vowels = %w[a e i o u]
    words = string.split
    new_words = []

    words.each do |word|
        new_word =
            if (word.match /^.*qu/)
                prefix = word[/^.*qu/]
                suffix = word.delete(prefix)
                suffix + prefix + "ay"
            else (!vowels.include?(word[0]))
                prefix = word[/[^aeiou]*/]
                suffix = word.delete(prefix)
                suffix + prefix + "ay"
            end
            new_words.push(new_word)
    end
    new_words.join(" ")
end
