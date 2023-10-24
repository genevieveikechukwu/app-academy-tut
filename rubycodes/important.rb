# raining = true

# # Less preferred
# if raining
#     puts "don't forget an umbrella!"
# end

# # Preferred by a Rubyist
# puts "don't forget an umbrella!" if raining

people = ["Joey", "Bex", "Andrew"]

# Less preferred
p people[people.length - 1]

# Preferred by a Rubyist
p people[-1]
p people.last

# def all_numbers_even?(nums)
#     nums.each do |num|
#         return false if num % 2 != 0
#     end

#     true
# end

# Preferred by a Rubyist
 def all_numbers_even?(nums)
    nums.all? { |num| num.even?}
end

p all_numbers_even?([2, 6, 4, 8])

def say_hi(options= {mma:"gene"  }, *others)
p options
p others
end
say_hi()
def greet(first_name, last_name)
    p "Hey " + first_name + ", your last name is " + last_name
end

names = ["Grace", "Hopper"]
greet(*names)


# We can use a double splat (**) to perform a similar unpacking of a hash's key-value pairs. Double splat will only work with hashes where the keys are symbols:

old_hash = { a: 1, b: 2 }
new_hash = { **old_hash, c: 3 }
p new_hash 

# inject can take in an initial value and is equal to reduce in js

p ( [11, 7, 4, 8].inject(0) do |acc, el|
    if el.even?
        acc + el
    else
        acc
    end
end )

# Write a method, multi_dimensional_sum(array), that accepts a multidimensional array as an arg 
# and returns the sum of all numbers in the array.

def multi_dimensional_sum(array)
  sum = 0
  array.each do |element|
    if element.is_a?(Array)
      sum += multi_dimensional_sum(element)
    elsif element.is_a?(Numeric)
      sum += element
    end
  end
  sum
end

arr_1 = [
    [4, 3, 1],
    [8, 1],
    [2]
]

p multi_dimensional_sum(arr_1)    # => 19

arr_2 = [
    [ [3, 6], [7] ],
    [ [5, 2], 1 ]
]

p multi_dimensional_sum(arr_2)    # => 24

# When a conditional evaluates to false. I.e While false... It will never run
# use Irb to open interactive ruby terminal


# def vowel_cipher(string)
# vowel = "aeiou"
#   new_string = ""
#   string.each_char do |char|
#     if !vowel.include?(char)
#        new_string += char
#     else
#       idx = vowel.index(char)
#       new_idx = idx + 1
#       new_string += vowel[new_idx % 5]
#     end
#   end
#   return new_string 
# end
# (--10) converts a negative num to positive

# puts vowel_cipher("bootcamp") #=> buutcemp
# puts vowel_cipher("paper cup") #=> pepir cap
# new_string += vowel[new_idx % 5] Using modulus for an index is a great way for you not to step outside your index

# Array.new(10, "mma")  Creates a new array of length 10 and default value mma

# grid = Array.new(3, Array.new(3)) !== Array.new(3) { Array.new(3) }  Try running and modifying some parts

# bundle exec rspec for running all the tests. Make sure to arrange your file in lib folder and tests in spec. 