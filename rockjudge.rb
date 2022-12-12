def rock_judger(r_arr)     
  count = r_arr.length
  a,b =  count <= 2 ? [r_arr[0], r_arr[-1]] : [rock_judger(r_arr.pop(count/2)), rock_judger(r_arr)]
  return a > b ? a : b
end

# make some random rocks
rocks = 30.times.map { rand(1..200) }
puts rocks.join(', ')

puts "Heaviest rock is: #{rocks.reduce { |max_rock, rock| max_rock > rock ? max_rock : rock }}"
puts "Recursively, heaviest rock is #{rock_judger(rocks)}"
