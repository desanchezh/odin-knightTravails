class Vertex
  attr_accessor :root, :possible_moves

  def initialize(root)
    @root = root
    @possible_moves = {
    1 => [root[0] + 2, root[1] + 1],
    2 => [root[0] + 1, root[1] + 2],
    3 => [root[0] - 1, root[1] + 2],
    4 => [root[0] - 2, root[1] + 1],
    5 => [root[0] - 2, root[1] - 1],
    6 => [root[0] - 1, root[1] - 2],
    7 => [root[0] + 1, root[1] - 2],
    8 => [root[0] + 2, root[1] - 1]}
  end
end

vertex = Vertex.new([0, 0])

p vertex.possible_moves[1]