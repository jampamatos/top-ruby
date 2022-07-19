# frozen_string_literal: true

# This class will instantiate the Board for the Tic-Tac-Toe game.
class Board
  attr_reader :victory

  @@round = 1

  def initialize
    @cells = {
      cell1: 1, cell2: 2, cell3: 3,
      cell4: 4, cell5: 5, cell6: 6,
      cell7: 7, cell8: 8, cell9: 9
    }
    @victory = [[1, 2, 3], [4, 5, 6], [7, 8, 9],
                [1, 4, 7], [2, 5, 8], [3, 6, 9],
                [1, 5, 9], [3, 5, 7]]
    @taken_cells = []
    @end_game = false

  end

  def print_board
    clear_screen
    puts "Round #{@@round}"
    puts ''
    puts "
    | #{@cells[:cell1]} | #{@cells[:cell2]} | #{@cells[:cell3]} |
    -------------
    | #{@cells[:cell4]} | #{@cells[:cell5]} | #{@cells[:cell6]} |
    -------------
    | #{@cells[:cell7]} | #{@cells[:cell8]} | #{@cells[:cell9]} |
    "
  end

  def make_play(player)
    loop do
      num = select_cell_msg(player)
      if check_cell(num)
        player_move(num, player)
        break
      else
        taken_cell_msg
      end
    end
  end

  def check_victory(player)
    @victory.each { |combo| return true if (combo & player.player_cells).size == combo.size }
    # Using Array Intersection in (combo & player.player_cells)
    false
  end

  def check_draw
    @taken_cells.length == 9
  end

  def update_round
    @@round += 1
  end

  def start_game
    @end_game = false
    @cells = {
      cell1: 1, cell2: 2, cell3: 3,
      cell4: 4, cell5: 5, cell6: 6,
      cell7: 7, cell8: 8, cell9: 9
    }
    @taken_cells = []
  end

  def end_game
    @end_game = true
  end

  def game_end?
    @end_game
  end

  def round_num
    @@round
  end

  private

  def player_move(num, player)
    change_cell(num, player.symbol)
    player.add_to_cell(num)
    @taken_cells << num
  end

  def change_cell(num, val)
    @cells["cell#{num}".to_sym] = val
  end

  def check_cell(num)
    @cells["cell#{num}".to_sym] == num
  end
end
