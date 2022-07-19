# frozen_string_literal: true

# This class will instantiate the players for the Tic-Tac-Toe game.
class Player
  attr_reader :name, :symbol, :points, :player_cells

  @@symbol_used = []

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
    @points = 0
    @player_cells = []
  end

  def add_to_cell(num)
    @player_cells << num
  end

  def add_point
    @points += 1
  end

  def self.add_to_symbols(symbol)
    @@symbol_used << symbol
  end

  def self.symbols_used
    @@symbol_used
  end

end
