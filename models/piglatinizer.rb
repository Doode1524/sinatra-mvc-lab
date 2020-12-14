require 'pry'
class PigLatinizer

    def consonant?(text)
        !text.match(/[aAeEiIoOuU]/)
    end

    def pig_word(word)
        if !consonant?(word[0])
            word = word + "w"
        elsif !consonant?(word[1])
            word = word.slice(1..-1) + word.slice(0)
        elsif !consonant?(word[2])
            word = word.slice(2..-1) + word.slice(0,2)
        elsif !consonant?(word[3])
            word = word.slice(3..-1) + word.slice(0,3)
                
        end
        word + "ay"
    end

    def piglatinize(str)
        if str.split(" ").length == 1
            pig_word(str)
        else
            pig_sentence(str)
        end
    end

    def pig_sentence(sentence)
        sentence.split.collect { |word| pig_word(word) }.join(" ")
           
    end





end

