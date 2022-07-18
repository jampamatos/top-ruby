# frozen_string_literal: true

require './hand'

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
  wordlist.map(&:downcase)
end

def get_freq_dict(sequence)
  iter_seq = sequence.instance_of?(String) ? sequence.split('') : sequence
  freq = {}
  iter_seq.each { |char| freq[char] = freq.fetch(char, 0) + 1 }
  freq
end

def get_word_score(word, hand)
  raise 'Invalid input -- only valid words or empty string.' unless word.downcase || word == ''
  raise 'Word bigger than number of letters.' unless word.length <= hand.size

  score = 0
  word.each_char { |char| score += SCRABBLE_LETTER_VALUES[char.to_sym] }
  score *= word.length

  score += 50 if word.length == hand.size

  score
end

hand = Hand.new
hand.deal_hand(hand.size)
p hand.hand
hand.display_hand
# puts get_word_score('sought', hand)
