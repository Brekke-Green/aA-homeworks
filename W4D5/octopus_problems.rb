fish_arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish_octopus(arr)
    longest_fish = arr[0]
    arr.each do |fish1|
        arr.each do |fish2|
            longest_fish = fish2 if fish2.length > fish1.length
        end
    end
    longest_fish

end 

puts sluggish_octopus(fish_arr)

def dominant_octopus(arr)
    return [] if arr.length == 0
    pivot = arr[0]
    left = arr.select {|fish| fish.length < pivot.length}
    right = arr.select {|fish| fish.length > pivot.length}

    dominant_octopus(left) + [pivot] + dominant_octopus(right)
end 

puts dominant_octopus(fish_arr)

def clever_octopus(arr)
    longest_fish = arr[0]
    arr.each {|fish| longest_fish = fish if fish.length > longest_fish.length}
    longest_fish
end 

puts clever_octopus(fish_arr)

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(direction, tiles_array)
    tiles_array.each_with_index {|arrow, index| return index if arrow == direction}
end 

puts slow_dance("up", tiles_array)
puts slow_dance("right-down", tiles_array)

tiles_hash = {}
tiles_array.each_with_index {|tile, index| tiles_hash[tile] = index}

def fast_dance(direction, tiles_hash)
    tiles_hash[direction]
end 

puts fast_dance("up", tiles_hash)
puts fast_dance("right-down", tiles_hash)