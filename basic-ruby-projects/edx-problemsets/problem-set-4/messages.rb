# frozen_string_literal: true

def start_hand_msg(hand)
  print 'Current hand: '
  display_hand(hand)
  puts ''
  print 'Enter word, or a "." to indicate that you are finished: '
  gets.chomp.downcase
end

def invalid_word_msg
  puts 'Invalid word, please try again.'
  puts ''
end

def hand_end_msg(input, score)
  if input == '.'
    puts "Goodbye! Total score: #{score} points."
  else
    puts "Run out of letters. Total score: #{score} points."
  end
end