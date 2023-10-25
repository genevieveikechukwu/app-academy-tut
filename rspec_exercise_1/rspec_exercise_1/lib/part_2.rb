def hipsterfy(word)
    vowel = "aeiou"
    i = word.length-1
    while i>=0
     if vowel.include?(word[i])
        return word[0...i] + word[i+1..-1]
     end
    i-=1
    end
    word
end

def vowel_counts(str)
    vowel = "aeiou"
    hash = Hash.new(0)
    str.each_char do |char|
        if vowel.include?(char.downcase)
            hash[char.downcase] += 1
        end
    end    
    hash
end

def caesar_cipher(str, num)
    alphabet = ('a'..'z').to_a
    new_message = ""
    str.each_char do |char|
        if alphabet.include?(char)
            old_index = alphabet.index(char)
            new_index = old_index + num
            new_message += alphabet[new_index % 26]
        else
            new_message+=char
        end

end
    new_message
end