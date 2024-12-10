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
    [0, 1, 2, 3, 4, 5, 6, 7].each do |each|
      root.moves[each] = Square.new(possible_moves[each]) if is_valid_move?(possible_moves[each])
    end
      

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



