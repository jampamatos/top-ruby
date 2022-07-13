# frozen_string_literal: true

require 'set'

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

def choose_word(word_list)
  word_list.sample
end

word_list = load_words

def word_guessed?(secret_word, letters_guessed)
  secret_word.split('').to_set.subset?(letters_guessed.to_set)
end

def get_guessed_word(secret_word, letters_guessed)
  return_str = ''
  secret_word.each_char do |c|
    letters_guessed.include?(c) ? return_str += c : return_str += '_'
  end
  return_str
end

def get_available_letters(letters_guessed)
  (('a'..'z').to_a.to_set - letters_guessed.to_set).to_a.sort.join
end

def hangman(secret_word)
  word_len = secret_word.length()
  guesses = 8
  letters_guessed = []

  puts 'Welcome to the game of Hang The Coder'
  puts "I am thinking of a word that is #{word_len} letters long."

  while guesses.positive?
    puts "You have #{guesses} guesses left."
    puts "Avalilable letters: #{get_available_letters(letters_guessed)}"
    puts 'Please guess a letter:'
    letter = gets.strip.downcase

    if letter.length > 1
      puts 'Please type only one letter.'
      puts '-------------'
    else
      if !letters_guessed.include?(letter)
        letters_guessed << letter

        if secret_word.include? letter
          puts "Good guess: #{get_guessed_word(secret_word, letters_guessed)}."
          puts '-------------'
        else
          puts "Oops! That letter is not in my word: #{get_guessed_word(secret_word, letters_guessed)}."
          puts '-------------'
          guesses -= 1
        end
      else
        puts "Oops! You've already guessed that letter: #{get_guessed_word(secret_word, letters_guessed)}."
        puts '-------------'
      end

      if word_guessed?(secret_word, letters_guessed)
        puts 'Congratulations! You won!'
        exit
      end
    end
  end

  puts "Sorry, you ran out of guesses. The word was #{secret_word}."
end

secret_word = choose_word(word_list).downcase
hangman(secret_word)
