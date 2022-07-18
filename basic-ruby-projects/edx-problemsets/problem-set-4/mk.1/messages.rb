# frozen_string_literal: true

def update_hand_msg(hand)
  display_hand(hand)
  print 'Enter word, or a "." to indicate that you are finished: '
  gets.chomp.downcase
end

def points_msg(input, points, score)
  puts "#{input} earned #{points} points. Total score: #{score}."
  puts ''
end

def end_turn(input, score)
  if input == '.'
    puts "Goodbye! Total score: #{score} points."
  else
    puts "Run out of letters. Total score: #{score} points."
  end
end

def round_menu
  print 'Enter n to deal a new hand, r to replay the last hand, or e to end game: '
  gets.chomp.downcase
end
