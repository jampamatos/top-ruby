# frozen_string_literal: true

def welcome_msg
  clear_screen
  puts 'Welcome to Ruby Hangman!'
  puts ''
  puts "Please type 'L' to load a game or 'N' to start a new one:"
  start_input
end

def word_size_msg(game)
  puts "I am thinking of a word that is #{game.word_size} letters long..."
end

def available_letters_msg(game)
  puts "Available letters: #{game.available_letters.join}"
  puts ''
end

def letter_guessed_msg
  clear_screen
  puts 'You already guesses that letter!'
end

def round_start_msg(game)
  puts "Chances left: #{game.tries}"
  available_letters_msg(game)
  game.show_word
  puts "Type 'save' to SAVE AND EXIT game, QUIT to quit or any letter to TRY A GUESS:"
end

def save_msg
  puts 'save game logic here'
  exit 0
end

def quit_msg
  puts 'Thank you for playing!'
  exit 0
end

def play_again_msg
  puts 'Do you want to play again? (Y/N)'
  again_input
end

def good_guess_msg(game, letter)
  clear_screen
  puts 'Good guess!'
  game.guessed_letters << letter
end

def incorrect_msg(game, letter)
  clear_screen
  puts 'Sorry! Incorrect letter!'
  game.guessed_letters << letter
  game.minus_tries
end

def you_win_msg
  clear_screen
  puts 'Congratulations! You won!'
end

def you_lost_msg
  clear_screen
  puts 'Sorry, You lost!'
end