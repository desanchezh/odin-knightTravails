class Vertex
  attr_accessor :square, :possible_moves

  def initialize(square)
    @square = square
    @possible_moves = {
    0 => [square[0] + 2, square[1] + 1],
    1 => [square[0] + 1, square[1] + 2],
    2 => [square[0] - 1, square[1] + 2],
    3 => [square[0] - 2, square[1] + 1],
    4 => [square[0] - 2, square[1] - 1],
    5 => [square[0] - 1, square[1] - 2],
    6 => [square[0] + 1, square[1] - 2],
    7 => [square[0] + 2, square[1] - 1]}
  end

end
