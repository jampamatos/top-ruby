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
