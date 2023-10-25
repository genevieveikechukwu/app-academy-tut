def average(num1,num2)
    (num1+num2)/2.0
end 

def average_array(arr)
arr.sum/(arr.length * 1.0)
end 

def repeat(str, num)
    str*num
end

def yell(str)
    str.upcase! + '!'
end

def alternating_case(sent)
   words = sent.split(" ")
   new_array = words.map.with_index do |word, idx|
    if idx % 2 == 0
        word.upcase
    else
        word.downcase
    end
   end 
   new_array.join(" ")
end