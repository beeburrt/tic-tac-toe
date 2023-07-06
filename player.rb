# frozen_string_literal: true

class Player
  attr_accessor :name, :marker, :turns, :move
  attr_reader :next_turn
  attr_writer :moves

  def initialize(name)
    @name = name
    @turns = []
  end

  def next_turn?
    @marker == "X" && turns.length.even?
  end

  def make_move
    @moves << {@marker => @move}
  end
end

class PlayerOne < Player
end
