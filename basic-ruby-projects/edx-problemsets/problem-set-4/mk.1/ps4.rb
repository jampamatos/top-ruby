# frozen_string_literal: true

# require './messages'

# VOWELS = 'aeiou'
# CONSONANTS = 'bcdfghjklmnpqrstvwxyz'
# HAND_SIZE = 7

# SCRABBLE_LETTER_VALUES = {
#   'a': 1, 'b': 3, 'c': 3, 'd': 2, 'e': 1, 'f': 4, 'g': 2, 'h': 4, 'i': 1, 'j': 8, 'k': 5, 'l': 1, 'm': 3, 'n': 1,
#   'o': 1, 'p': 3, 'q': 10, 'r': 1, 's': 1, 't': 1, 'u': 1, 'v': 4, 'w': 4, 'x': 8, 'y': 4, 'z': 10
# }.freeze

# WORDLIST_FILE = 'words.txt'
# Dir.chdir(File.dirname(__FILE__)) # File in the same directory

# def load_words
#   wordlist = []
#   puts 'Loading word list from file...'

#   File.readlines(WORDLIST_FILE).each do |line|
#     wordlist.push(*line.split)
#   end

#   puts "#{wordlist.length} words loaded."
#   wordlist.map(&:downcase)
# end

# def get_freq_dict(sequence)
#   iter_seq = sequence.instance_of?(String) ? sequence.split('') : sequence
#   freq = {}
#   iter_seq.each { |char| freq[char] = freq.fetch(char, 0) + 1 }
#   freq
# end

# def get_word_score(word, num)
#   raise 'Invalid input -- only valid words or empty string.' unless word.downcase || word == ''
#   raise 'Word bigger than number of letters.' unless word.length <= num

#   score = 0
#   word.each_char { |char| score += SCRABBLE_LETTER_VALUES[char.to_sym] }
#   score *= word.length

#   score += 50 if word.length == num

#   score
# end

# def display_hand(hand)
#   print 'Current hand: '
#   hand.each_key do |letter|
#     (1..hand[letter]).each do
#       print letter, ' '
#     end
#   end
#   puts ''
# end

# def random_vow(num)
#   vows = {}
#   (1..num).each do
#     vow = VOWELS.split('').sample
#     vows[vow] = vows.fetch(vow, 0) + 1
#   end
#   vows
# end

# def random_cons(num)
#   cons = {}
#   (1..num).each do
#     con = CONSONANTS.split('').sample
#     cons[con] = cons.fetch(cons, 0) + 1
#   end
#   cons
# end

# def merge_hand(vow, con)
#   vows = random_vow(vow)
#   cons = random_cons(con)
#   vows.merge(cons)
# end

# def deal_hand(num)
#   num_vowel = num / 3
#   num_cons = num - num_vowel

#   merge_hand(num_vowel, num_cons)
# end

# p deal_hand(7)

# def update_hand(hand, word)
#   output = hand.clone
#   word.each_char { |c| output[c.to_s] -= 1 }
#   output
# end

def check_valid_word(word, hand, word_list)
  word_dict = get_freq_dict(word)
  if word_dict.all? { |k, v| v <= hand.fetch(k.to_s, 0) } && word_list.include?(word)
    true
  else
    puts 'Invalid word, please try again.'
    puts ''
    false
  end
end

def calculate_hand_length(hand)
  output = 0

  hand.each { |_k, v| output += v }

  output
end

def play_hand(hand, word_list, num)
  score = 0

  while calculate_hand_length(hand).positive?
    input = update_hand_msg(hand)
    break if input == '.'

    check_valid_word(input, hand, word_list) ? points = get_word_score(input, num) : redo
    score += points
    points_msg(input, points, score)
    hand = update_hand(hand, input)
  end
  end_turn(input, score)
end

def round_control(input, hand, word_list,num)
  case input
  when 'n'
    hand = deal_hand(num)
    play_hand(hand, word_list, num)
    hand
  when 'r'
    if hand == {}
      puts 'You have not played a hand yet. Please play a new hand first!'
      puts ''
      1
    else
      play_hand(hand, word_list, num)
      hand
    end
  when 'e'
    2
  else
    puts 'Invalid command.'
    puts ''
    1
  end
end

def play_round(word_list)
  hand = {}
  num = HAND_SIZE
  loop do
    input = round_menu
    round = round_control(input, hand, word_list, num)
    case round
    when 1
      next
    when 2
      break
    else
      hand = round
    end
  end
end

# word_list = load_words
# play_round(word_list)
