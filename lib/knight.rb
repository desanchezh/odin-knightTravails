require_relative 'square'

class Knight
  attr_accessor :coords, :target

  def initialize(coords, target)
    @coords = coords
    @target = target
  end

  def get_moves(target = @target)
    all_moves = [[target[0] + 2, target[1] + 1],
    [target[0] + 1, target[1] + 2],
    [target[0] - 1, target[1] + 2],
    [target[0] - 2, target[1] + 1],
    [target[0] - 2, target[1] - 1],
    [target[0] - 1, target[1] - 2],
    [target[0] + 1, target[1] - 2],
    [target[0] + 2, target[1] - 1]]
    all_moves
  end

  def is_valid_move?(coords)
    return true if coords[0].between?(0, 7) && coords[1].between?(0, 7)
    false
  end 

  def build_adj_list
    moves = get_moves
    possible_moves = []
    moves.each do |move|
      p move
      possible_moves << move if is_valid_move?(move)
    end
    possible_moves
  end

end

knight = Knight.new([0, 0], [0, 0])

p knight.get_moves
p knight.build_adj_list



