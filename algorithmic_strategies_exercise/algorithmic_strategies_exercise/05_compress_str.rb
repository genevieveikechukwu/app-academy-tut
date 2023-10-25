# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".
def compress_str(str)
  counter = Hash.new(1)
  compressed = ""

  str.each_char.with_index do |char, i|
    if str[i + 1] == char
       counter[char] += 1
    end

    if str[i + 1] != char && counter[char] != 1
      compressed += counter[char].to_s + char
      counter[char] = 1
    elsif counter[char] == 1 && str[i + 1] != char
        compressed += char
    end

    
  end
p counter
  compressed
end

p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"
