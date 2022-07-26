# frozen_string_literal: true

# Game class contains all information about the Hangman game
class Game
  attr_reader :word, :available_letters, :tries
  attr_accessor :guessed_letters

  def initialize(word)
    @word = word.split('')
    @guessed_letters = []
    @available_letters = [*('a'..'z')]
    @tries = 8
  end

  def word_size
    @word.size
  end

  def minus_tries
    @tries -= 1
  end

  def guess_letter(letter)
    if available_letters.include?(letter)
      @available_letters.delete(letter)
    else
      letter_guessed_msg
    end
  end

  def show_word
    new_word = []
    @word.each do |char|
      if @guessed_letters.include?(char)
        new_word.append("#{char.upcase} ")
      else
        new_word.append('_ ')
      end
    end
    puts new_word.join
    puts ''
  end

  def all_correct_letters?
    (@word & @guessed_letters).size == @word.uniq.size
  end
end
