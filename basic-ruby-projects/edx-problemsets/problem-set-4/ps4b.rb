# frozen_string_literal: true

require './ps4'

def comp_chose_word(hand, word_list, num)
  best_score = 0
  best_word = ''
  score = 0

  word_list.each do |word|
    score = get_word_score(word, num) if valid_word?(word, hand, word_list)

    if score > best_score
      best_score = score
      best_word = word
    end
  end
  best_word
end

hand = deal_hand(7)
p hand
word_list = load_words
p comp_chose_word(hand, word_list, 7)