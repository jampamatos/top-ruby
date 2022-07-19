# frozen_string_literal: true

# This class will instantiate the players for the Tic-Tac-Toe game.
class Player
  attr_reader :name, :symbol, :points, :player_cells

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
    @points = 0
    @player_cells = []
  end

  def add_to_cell(num)
    @player_cells << num
  end
end
