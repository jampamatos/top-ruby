# frozen_string_literal: true

require './game_manager'

welcome_msg
p1_n, p1_s = define_p1
player1 = Player.new(p1_n, p1_s)
puts player1.name
puts player1.symbol