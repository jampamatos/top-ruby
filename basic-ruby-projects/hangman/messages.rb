# frozen_string_literal: true

def word_size_msg(game)
  puts "I am thinking of a word that is #{game.word_size} letters long..."
end

def available_letters_msg(game)
  puts "Available letters: #{game.available_letters.join}"
end

def letter_guessed_msg
  puts 'You already guesses that letter!'
  puts ''
end
