# frozen_string_literal: true

require './board'
require './player'
require './messages'

def play_turns(pl1, pl2, board)
  board.print_board
  board.make_play(pl1)
  return 1 if board.check_victory(pl1)
  return 3 if board.check_draw

  board.print_board
  board.make_play(pl2)
  return 2 if board.check_victory(pl2)
  return 3 if board.check_draw

  0
end

def play_round(pl1, pl2, board)
  loop do
    victor = play_turns(pl1, pl2, board)
    case victor
    when 0
      next
    when 1
      congrats_msg(pl1, pl2)
      break
    when 2
      congrats_msg(pl2, pl1)
      break
    when 3
      draw_msg(pl1, pl2)
      break
    else
      puts 'Unknown error'
      break
    end
  end
  board.update_round
end

p1 = Player.new('One', 'O')
p2 = Player.new('Two', 'T')
board = Board.new

play_round(p1, p2, board)
