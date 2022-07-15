# frozen_string_literal: true

require './ps4'

def comp_choose_word(hand, word_list, num)
  best_s = 0
  best_w = None

  word_list.each do |word|
    score = get_word_score(word, num) if valid_word?(word, hand, word_list)
    if score > best_s
      best_s = score
      best_w = word
    end
  end
  best_w
end

def comp_play_hand(hand, word_list, num)
  total_score = 0

  while calculate_hand_length(hand).positive?
    print 'Current hand: '
    display_hand(hand)
    puts ''

    word = comp_choose_word(hand, word_list, num)
    if word == none
      break
    else
      if !valid_word?(word, hand, word_list)
        puts 'This is a terrible error! I need to check my own code!'
      else
        score = get_word_score(word, num)
        total_score += score
        puts "#{word} earned #{score} points. Total: #{total_score} points."
        hand = update_hand(hand, word)
        puts ''
      end
    end
  end
  puts "Total score: #{total_score} points."
end

def play_game(word_list)
  hand ={}
  num = HAND_SIZE

  loop do
    puts 'Enter n to deal a new hand, r to replay the last hand, or e to end game:'
    first_p = gets.chomp.downcase
  end
end