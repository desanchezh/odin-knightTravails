require_relative 'vertex'

class KnightMoves
  attr_accessor :current, :target

  def initialize(start, target)
    @current = Vertex.new(start)
    @target = target
  end

  def is_valid_move?
    return false if @current.square[0] > 7 || @current.square[1] > 7
    return false if @current.square[0] < 0 || @current.square[1] < 0

    true
  end

end

knight = KnightMoves.new([0, 0], [5, 5])

p knight.current.square
p knight.current.possible_moves[1]
p knight.current.square = knight.current.possible_moves[7]
p knight.is_valid_move?

