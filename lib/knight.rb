require_relative 'square'

class Knight
  attr_accessor :root_coords, :target

  def initialize(coords, target)
    @root_coords = Square.new(coords)
  end

  def build_moves(root = @root_coords)
    possible_moves = {
    0 => [root.coords[0] + 2, root.coords[1] + 1],
    1 => [root.coords[0] + 1, root.coords[1] + 2],
    2 => [root.coords[0] - 1, root.coords[1] + 2],
    3 => [root.coords[0] - 2, root.coords[1] + 1],
    4 => [root.coords[0] - 2, root.coords[1] - 1],
    5 => [root.coords[0] - 1, root.coords[1] - 2],
    6 => [root.coords[0] + 1, root.coords[1] - 2],
    7 => [root.coords[0] + 2, root.coords[1] - 1]}

    #make a loop ....DRY
    root.moves[0] = Square.new(possible_moves[0]) if is_valid_move?(possible_moves[0])
    root.moves[1] = Square.new(possible_moves[1]) if is_valid_move?(possible_moves[1])
    root.moves[2] = Square.new(possible_moves[2]) if is_valid_move?(possible_moves[2])
    root.moves[3] = Square.new(possible_moves[3]) if is_valid_move?(possible_moves[3])
    root.moves[4] = Square.new(possible_moves[4]) if is_valid_move?(possible_moves[4])
    root.moves[5] = Square.new(possible_moves[5]) if is_valid_move?(possible_moves[5])
    root.moves[6] = Square.new(possible_moves[6]) if is_valid_move?(possible_moves[6])
    root.moves[7] = Square.new(possible_moves[7]) if is_valid_move?(possible_moves[7])
  end

  def is_valid_move?(coords)
    return true if coords[0].between?(0, 7) && coords[1].between?(0, 7)
    false
  end 

end

knight = Knight.new(0, 0)
p knight.root_coords
knight.build_moves
p knight.root_coords



