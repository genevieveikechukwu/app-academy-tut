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
    nums.all? { |num| num.even? }
end

puts all_numbers_even?([2,5,7,23,45,6,])