# frozen_string_literal: true

def select_cell_msg(player)
  puts "Please select one cell number from the board, #{player.name}"
  num = gets.chomp.to_i
  puts ''
  num
end

def taken_cell_msg
  puts 'This cell has already been taken!'
  puts ''
end

def welcome_msg
  puts 'Welcome to JIP JAMPA JOE Mk. 2!'
  puts ''
  puts 'We will begin our simple terminal-running game of Tic-Tac-Toe in a second.'
  puts ''
end

def validate_symbol
  loop do
    puts 'Please select "X", "O", or any other letter as your symbol.'
    puts "It cannot be #{Player.symbols_used[0]}." unless Player.symbols_used.empty?
    symbol = gets.chomp.upcase
    puts ''
    if symbol.length != 1
      puts 'Please enter only one letter.'
    elsif '0123456789'.include? symbol
      puts 'Please enter a non-numeric letter as your symbol.'
    elsif symbol == Player.symbols_used[0]
      puts 'You cannot repeat used symbols. Please select a new one.'
    else
      return symbol
    end
  end
end

def define_p1_msg
  puts 'First, please tell me your name, Player 1.'
  p1_n = gets.chomp
  puts ''
  p1_s = validate_symbol
  Player.add_to_symbols(p1_s)
  [p1_n, p1_s]
end

def define_p2_msg
  puts 'Now, tell me your name, Player 2.'
  p2_n = gets.chomp
  puts ''
  p2_s = validate_symbol
  Player.add_to_symbols(p2_s)
  [p2_n, p2_s]
end

def congrats_msg(player, other)
  player.add_point
  puts "Congratulations, #{player.name}! You won!"
  puts "You now have #{player.points} #{player.points > 1 ? 'points' : 'point'}.
#{other.name} have #{other.points} #{other.points > 1 ? 'points' : 'point'}."
end

def draw_msg(pl1, pl2)
  puts "It's a draw!"
  puts "#{pl1.name} have #{pl1.points} #{pl1.points > 1 ? 'points' : 'point'}.
#{pl2.name} have #{pl2.points} #{pl2.points > 1 ? 'points' : 'point'}."
end

def round_start_msg(player, board)
  puts "Round #{board.round_num} is about to start."
  puts "You play first, #{player.name}"
  sleep(2)
end

def play_again_msg
  loop do
    puts 'Do you want to play another round? (Y/N)'
    input = gets.chomp.upcase
    unless input == 'Y' || input == 'N'
      puts 'Wrong input.'
      next
    end
    return input
  end
end
