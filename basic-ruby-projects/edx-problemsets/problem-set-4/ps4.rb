# frozen_string_literal: true

VOWELS = 'aeiou'
CONSONANTS = 'bcdfghjklmnpqrstvwxyz'
HAND_SIZE = 7

SCRABBLE_LETTER_VALUES = {
  'a': 1, 'b': 3, 'c': 3, 'd': 2, 'e': 1, 'f': 4, 'g': 2, 'h': 4, 'i': 1, 'j': 8, 'k': 5, 'l': 1, 'm': 3, 'n': 1,
  'o': 1, 'p': 3, 'q': 10, 'r': 1, 's': 1, 't': 1, 'u': 1, 'v': 4, 'w': 4, 'x': 8, 'y': 4, 'z': 10
}.freeze

WORDLIST_FILE = 'words.txt'
Dir.chdir(File.dirname(__FILE__)) # File in the same directory

def load_words
  wordlist = []
  puts 'Loading word list from file...'

  File.readlines(WORDLIST_FILE).each do |line|
    wordlist.push(*line.split)
  end

  puts "#{wordlist.length} words loaded."
  wordlist
end

def get_freq_dict(sequence)
  iter_seq = sequence.instance_of?(String) ? sequence.split('') : sequence
  freq = {}
  iter_seq.each { |x| freq[x] = freq.fetch(x, 0) + 1 }
  freq
end

def get_word_score(word, num)
  raise 'Invalid input -- only valid words or empty string.' unless word.downcase || word == ''
  raise 'Word bigger than number of letters.' unless word.length <= num

  score = 0
  word.each_char { |char| score += SCRABBLE_LETTER_VALUES[char.to_sym] }
  score *= word.length

  score += 50 if word.length == num

  score
end

def display_hand(hand)
  hand.each_key do |letter|
    (1..hand[letter.to_sym]).each do
      print letter
    end
  end
end

def random_vow(num)
  vows = {}
  (1..num).each do
    vow = VOWELS.split('').sample
    vows[vow] = vows.fetch(vow, 0) + 1
  end
  vows
end

def random_cons(num)
  cons = {}
  (1..num).each do
    con = CONSONANTS.split('').sample
    cons[con] = cons.fetch(cons, 0) + 1
  end
  cons
end

def deal_hand(num)
  hand = {}
  num_vowel = num / 3
  num_cons = num - num_vowel

  hand = random_vow(num_vowel).merge(hand)
  hand = random_cons(num_cons).merge(hand)

  # (1..num_vowel).each do
  #   vow = VOWELS.split('').sample
  #   hand[vow] = hand.fetch(vow, 0) + 1
  # end

  # (num_vowel..num - 1).each do
  #   cons = CONSONANTS.split('').sample
  #   hand[cons] = hand.fetch(cons, 0) + 1
  # end

  hand.sort_by{ |k, _v| k }.to_h
end

def update_hand(hand, word)
  output = hand.clone
  word.each_char { |c| output[c.to_sym] -=1 }
  output
end

def valid_word?(word, hand, word_list) end
