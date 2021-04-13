class PigLatinizer
    attr_reader :text



    def initialize

    end

    # def piglatinize(text)
    #     words = text.split

    #     words.map do |word|
    #       if word =~ /^[aeiou]/i 
    #        "#{word}way"
    #       else
    #         next_vow = word =~ /[aeiou]/i 
    #         consonants = word.slice(0...next_vow)
    #         rest = word.slice(next_vow..-1)
    #         "#{rest}#{consonants}ay"
    #       end
    #     end.join(' ')
    #   end

    def piglatinize(text)
      vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
      words = text.split
      words.map do |word|
        if vowels.include?(word[0])
          word + "way"
        else
          i = 0
          consonants = ""
          until vowels.include?(word[i])
            consonants += word[i]
            i += 1
          end
          word.slice(i..-1) + consonants + "ay"
        end
      end.join(" ")
    end

end