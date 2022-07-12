s = 'abcdefghijklmnopqrstuvwxyz'

curr_seq = s[0]
long_seq = s[0]

s.split('')[1..].each do |letter|
  if letter >= curr_seq[-1]
    curr_seq += letter
    long_seq = curr_seq if curr_seq.length > long_seq.length
  else
    curr_seq = letter
  end
end

puts "Longest substring in alphabetical order is: #{long_seq}."
