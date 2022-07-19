# frozen_string_literal: true

require './board'
require './player'
require './messages'

def clear_screen
  if RUBY_PLATFORM =~ /win32|win64|\.NET|windows|cygwin|mingw32/i
    system('cls')
  else
    system('clear')
  end
end

def play_symbol(player, board)
  board.print_board
  board.make_play(player)
  board.end_game if board.check_victory(player) || board.check_draw
end

def round_end(pl1, pl2, board)
  if board.check_victory(pl1)
    congrats_msg(pl1, pl2)
  elsif board.check_victory(pl2)
    congrats_msg(pl2, pl1)
  elsif board.check_draw
    draw_msg(pl1, pl2)
  else
    puts 'Unknown error.'
  end
  board.update_round
end

def play_turn(pl1, pl2, board)
  loop do
    play_symbol(pl1, board)
    break if board.game_end?

    play_symbol(pl2, board)
    break if board.game_end?
  end
  round_end(pl1, pl2, board)
end

def reset(pl1, pl2, board)
  board.start_game
  pl1.restart
  pl2.restart
end

def play_round(pl1, pl2, board)
  reset(pl1, pl2, board)
  round_start_msg(pl1, board)
  play_turn(pl1, pl2, board)
end

# p1 = Player.new('One', 'O')
# p2 = Player.new('Two', 'T')
# board = Board.new

# play_round(p1, p2, board)
