vowels = 'aeiou'
vowel_sum = 0
s = 'azcbobobegghakl'

s.split('').each { |c| vowel_sum += 1 if vowels.split('').include?(c) }

puts "Number of vowels: #{vowel_sum}"
