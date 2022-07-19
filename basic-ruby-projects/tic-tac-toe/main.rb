# frozen_string_literal: true

require './game_manager'

welcome_msg
p1_n, p1_s = define_p1_msg
player1 = Player.new(p1_n, p1_s)
p2_n, p2_s = define_p2_msg
player2 = Player.new(p2_n, p2_s)
board = Board.new

loop do
  play_round(player1, player2, board)
  input = play_again_msg
  break if input == 'N'

  play_round(player2, player1, board)
  input = play_again_msg
  break if input == 'N'
end
