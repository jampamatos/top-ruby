s = 'boobyboobobobaioobobobbgptmbobobwobob'

num_bobs = 0

s.each_char.with_index do |_c, i|
  num_bobs += 1 if s[i..i + 2] == 'bob'
end

puts "Number of time bob occurs is: #{num_bobs}"
