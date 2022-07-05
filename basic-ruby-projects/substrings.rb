def substrings(str, dict)
  return_array = []
  dict.each do |dic_word|
    str.split.each do |str_word|
      return_array << dic_word if str_word.downcase.include?(dic_word.downcase)
    end
  end
  return_array.tally()
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("BELOW", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)