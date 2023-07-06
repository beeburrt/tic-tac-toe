# frozen_string_literal: true

require "player"
require "board"

class Game
  attr_accessor :moves, :turn

  def initialize(turn)
    @moves = moves
    @turn = turn
  end
end
