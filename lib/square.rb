class Square
  attr_reader :coords
  attr_accessor :children, :parent, :next_moves

  def initialize(coords, parent = nil)
    @coords = coords
    @next_moves = build_next_moves(@coords)
    @children = []
    @parent = parent

  end

  def get_moves(square)
    all_moves = [[square[0] + 2, square[1] + 1],
    [square[0] + 1, square[1] + 2],
    [square[0] - 1, square[1] + 2],
    [square[0] - 2, square[1] + 1],
    [square[0] - 2, square[1] - 1],
    [square[0] - 1, square[1] - 2],
    [square[0] + 1, square[1] - 2],
    [square[0] + 2, square[1] - 1]]
    all_moves
  end

  def is_valid_move?(coords)
    return true if coords[0].between?(0, 7) && coords[1].between?(0, 7)
    false
  end

  def build_next_moves(square)
    moves = get_moves(square)
    possible_moves = []
    moves.each do |move|
      possible_moves << move if is_valid_move?(move)
    end
    possible_moves
  end

end
