# frozen_string_literal: true

require './board'
require './player'
require './messages'

board = Board.new
player1 = Player.new('X')
player2 = Player.new('O')
puts board.print_board
board.make_play(player1)
puts board.check_victory(player1)
p player1.player_cells.sort
puts board.print_board
board.make_play(player2)
puts board.check_victory(player2)
p player2.player_cells.sort
puts board.print_board
