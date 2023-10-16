my_hash = {
    "name" => "Mma", 
    "color"=>"red",
    "age" => 19
}
my_hash["fav"] = "squirel"
my_hash["artists"] = ["burna boy"]
my_hash["artists"] << "Sia"

# puts my_hash, my_hash.length, my_hash["artists"] << "Sia"
# print my_hash.has_key?("age")
# puts
# print my_hash.has_value?("sia")
# puts

# print my_hash.values

# puts
bucket_list = {
    "owner" => "Mmachukwu",
    "start_age" => 20,
    "end_age" => 30,
    "list" => [
        "Make my first 1 million", 
        "Make my first $1000", 
        "Travel out of Nigeria", "Vacation", 
        "Attend an event as a speaker", 
        "Start a podcast/youtube channel", 
        "Join Nasa"
    ],
    "helper" => "HolySpirit",
    
}

# bucket_list.each do |k, v|
#     puts k
#     puts v
#     puts "____"
# end

# Assign a default value to a hash

counter = Hash.new(0)

str = "mmachukwu"

str.each_char { |char| counter[char] +=1 }

puts counter

puts

print counter.sort_by { |k, v| v}
puts

# Using map and select.
# map returns a new arr after processing the input while select also returns a new arr after passing the conditions

# arr = [ "a", "b", "c", "d"]
# new_arr = arr.map {|ele| ele.upcase + ele}
# print new_arr
# puts

arr = [1,2,4,6,7,8,9,10,11]
new_arr = arr.select {|ele| ele % 2 === 0 }
print new_arr
puts