# frozen_string_literal: true

# Game class contains all information about the Hangman game
class Game
  attr_reader :word, :available_letters

  def initialize(word)
    @word = word.split('')
    @guessed_letters = []
    @available_letters = [*('a'..'z')]
    @tries = 5
    @game_over = false
  end

  def word_size
    @word.size
  end

  def guess_letter(letter)
    if available_letters.include?(letter)
      @available_letters.delete(letter)
      @guessed_letters << letter
    else
      letter_guessed_msg
    end
  end

  def show_word
    new_word = []
    @word.each do |char|
      if @guessed_letters.include?(char)
        new_word.append("#{char} ")
      else
        new_word.append('_ ')
      end
    end
    new_word.join
  end

  def all_correct_letters?
    (@word & @guessed_letters).size == @word.uniq.size
  end
end
