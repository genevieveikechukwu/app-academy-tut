# Write a method, peak_finder(arr), that accepts an array of numbers as an arg.
# The method should return an array containing all of "peaks" of the array.
# An element is considered a "peak" if it is greater than both it's left and right neighbor.
# The first or last element of the array is considered a "peak" if it is greater than it's one neighbor.

def peak_finder(arr)
arr.select.with_index do |num, idx|
     if idx == 0 && num > arr[1]
        num
     elsif idx == arr.length-1 && num > arr[-2]
        num
    elsif (idx > 0 && idx < arr.length - 1) && (num > arr[idx - 1] && num > arr[idx + 1])
        num
     end
end

end

p peak_finder([1, 3, 5, 4])         # => [5]
p peak_finder([4, 2, 3, 6, 10])     # => [4, 10]
p peak_finder([4, 2, 11, 6, 10])    # => [4, 11, 10]
p peak_finder([1, 3])               # => [3]
p peak_finder([3, 1])               # => [3]
