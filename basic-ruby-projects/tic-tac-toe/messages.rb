# frozen_string_literal: true

def select_cell_msg
  puts 'Select one cell number from the board'
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
    symbol = gets.chomp
    if symbol.length != 1
      puts 'Please enter only one letter.'
    elsif '0123456789'.include? symbol
      puts 'Please enter a non-numeric letter as your symbol.'
    else
      return symbol.upcase
    end
  end
end

def define_p1
  puts 'First, please tell me your name, Player 1.'
  p1_n = gets.chomp
  p1_s = validate_symbol
  [p1_n, p1_s]
end