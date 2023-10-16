# (1..3).each do |num1|
#     (1..5).each do |num|
#         puts num1.to_s + "    " + num.to_s
#     end
# end

# .to_s is a string method that converts a num to strng

# All possible iterations
# arr = ["a", "b", "c", "d"]

# arr.each do |ele1|
#     arr.each do |ele2|
#         puts ele1 + ele2
#     end
# end

# Only unique vaalues

arr = ["a", "b", "c", "d"]

arr.each_with_index do |ele1, idx1|
    arr.each_with_index do |ele2, idx2|
        if idx2 > idx1
            puts ele1 + ele2
        end
    end
end