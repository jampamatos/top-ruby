# frozen_string_literal: true

require './game'
require './messages'

WORDLIST_FILE = 'google-10000-english-no-swears.txt'
Dir.chdir(File.dirname(__FILE__)) # File in the same directory

def load_words
  wordlist = []
  puts 'Loading word list from file...'

  File.readlines(WORDLIST_FILE).each do |line|
    line.split.each { |word| wordlist.push(word) if word.size.between?(5, 12) }
  end

  puts "#{wordlist.length} words loaded."
  puts ''
  wordlist
end

def get_word(wordlist)
  wordlist.sample
end

wordlist = load_words
game = Game.new(get_word(wordlist))

loop do
  break if game.all_correct_letters?

  word_size_msg(game)
  available_letters_msg(game)
  p game.show_word
  input = gets.chomp.downcase
  game.guess_letter(input)
end
